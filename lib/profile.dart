import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'LoginPageMain.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[buildTop(), buildContent(context)],
    ));
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'assets/imgg.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade200,
      backgroundImage: const AssetImage('assets/profileimg.jpeg'));

  Widget buildContent(BuildContext context) {
  final user = FirebaseAuth.instance.currentUser;
  final userEmail = user?.email ?? 'No email';

  return SingleChildScrollView( // Allows for scrolling when content is larger than the screen
    child: Column(
      children: [
        const SizedBox(height: 16),
        Text(
          userEmail,
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        const Text(
          'Member',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),
        const Divider(),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'ABOUT US',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Welcome to TrimaFit – your dedicated companion on the path to a healthier and more balanced lifestyle, tailored uniquely for the Sri Lankan community. At TrimaFit, we believe in nurturing not just the body, but also the mind and spirit, aligning with the holistic essence of the word 'Trima,' which signifies the unity of these three elements in Sinhala. Our mission is to empower you with personalized workout schedules, nutrition plans grounded in local dietary habits, and a supportive community that resonates with your fitness goals and cultural identity. Here, you’ll find tools and resources designed to accommodate the challenges of accessing modern gym equipment and nutritional foods within Sri Lanka, ensuring that your health journey is both achievable and sustainable. Embrace the journey towards achieving your personal health goals with TrimaFit, where we’re more than just an app - we're a community bound by the shared vision of a healthier, happier Sri Lanka.",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.justify, // Justifies the text for better readability
          ),
        ),
        const SizedBox(height: 50),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15), // Increase the horizontal padding to reduce the button's width
          child: ElevatedButton(
            onPressed: () => signoutUser(context),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 190, 42, 42), // Text color of the button
              minimumSize: const Size(double.infinity, 45), // Makes the button wide and tall
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
            ),
            child: const Text(
              'Sign Out',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    ),
  );
}

 signoutUser(BuildContext context) async {
  try {
    await FirebaseAuth.instance.signOut();
    // ignore: avoid_print
    print('User signed out successfully');

  Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => LoginPageMain()),
        );// If you have a named route for LoginPage
    // Or use the following if you navigate directly to the widget
    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  } catch (error) {
    // ignore: avoid_print
    print('Error signing out: $error');
  }
}
}
