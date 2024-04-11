
// ignore_for_file: use_build_context_synchronously, file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trimafitapp/components/login_textfield.dart'; // Make sure this is the correct path
import 'LoginPageMain.dart'; // Adjust the import path as necessary. Only if you need to reference it somewhere else.

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final retypePasswordController = TextEditingController();

  void signUpUser(BuildContext context) async {
    if (passwordController.text == retypePasswordController.text) {
      try {
        // Attempt to sign up the user
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(), // Ensure email is trimmed for any leading/trailing whitespace
          password: passwordController.text.trim(),
        );
        // On successful sign up, show a SnackBar, then pop back to login page
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Registration successful, please log in.")),
        );
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        // Handle errors, such as email already in use or weak password
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message ?? "An error occurred")),
        );
      }
    } else {
      // Handle the case where the passwords do not match
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Passwords do not match")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 43, 43),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 250, // Smaller logo width
                  height: 200, // Smaller logo height
                  child: Image.asset('assets/trimafitloga1.png', fit: BoxFit.contain),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Create Your Account',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 25),
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: retypePasswordController,
                  hintText: 'Retype Password',
                  obscureText: true,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => signUpUser(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 194, 231, 30), // Button color
                    foregroundColor: Colors.white, // Text color
                    minimumSize: const Size(308, 60), // Increase button size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Maintain corner roundness
                    ),
                  ),
                  child: const Text('Sign Up', style: TextStyle(fontSize: 20)), // Increase font size if needed
                ),
                const SizedBox(height: 70),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPageMain()),
                        );
                      },
                      child: const Text(
                        'Sign In Now',
                        style: TextStyle(
                          color: Color.fromARGB(255, 201, 241, 20),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
