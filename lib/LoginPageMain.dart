// ignore_for_file: file_names, use_build_context_synchronously, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trimafitapp/components/login_button.dart';
import 'package:trimafitapp/components/login_textfield.dart';
import 'HomePage.dart';
import 'signup.dart'; // Make sure this is the correct path to your SignUp page

class LoginPageMain extends StatelessWidget {
  LoginPageMain({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(BuildContext context) async {
    try {
      // Show loading dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const Dialog(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 20),
                  Text("Signing in..."),
                ],
              ),
            ),
          );
        },
      );

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text,
        password: passwordController.text,
      );

      // After successful login, dismiss the loading dialog and navigate to HomePage
      Navigator.pop(context); // Dismiss the loading dialog
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } catch (e) {
      Navigator.pop(context); // Ensure loading dialog is dismissed in case of an error
      // Consider showing an error message to the user
      print(e); // For debugging purposes. Consider replacing with user feedback.
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
                const SizedBox(height: 50),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                  width: 250, // Smaller logo width
                  height: 110, // Smaller logo height
                  child: Image.asset('assets/trimafitloga1.png', fit: BoxFit.contain),
                ),
                ],
                ),
                const SizedBox(height: 60),
                const Text(
                  'Welcome back !',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 35),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 65), 
                MyButton(
                  onTap: () => signUserIn(context),
                ),
                const SizedBox(height: 135),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: const Text(
                        'Sign Up Now!',
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
