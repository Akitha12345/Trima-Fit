// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:trimafitapp/athlete.dart';
import 'package:trimafitapp/cardio.dart';
import 'package:trimafitapp/homeworkout.dart';
import 'package:trimafitapp/nutri2.dart';
import 'package:trimafitapp/nutrition.dart';
import 'crossfit.dart'; // Make sure this is the correct path to your CrossFit page
import 'gym.dart'; // Make sure this is the correct path to your Gym page
// ignore: duplicate_import
import 'cardio.dart'; // Make sure the path is correct
// ignore: duplicate_import
import 'homeworkout.dart'; // Make sure the path is correct
// ignore: duplicate_import
import 'nutrition.dart';
// ignore: duplicate_import
import 'athlete.dart';
import 'profile.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Image.asset(
          'assets/trimalogo1.png',
          fit: BoxFit.cover,
          height: kToolbarHeight,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 38, 38, 38),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/homeimage1.jpg'),
              ),
            ),
            const SizedBox(height: 12),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '- ACTIVITIES -',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            _buildActivityGrid(context),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildActivityGrid(BuildContext context) {
    List<Map<String, dynamic>> activities = [
      {'title': 'CROSSFIT', 'image': 'assets/crossfit.jpg', 'page': CrossFit()},
      {'title': 'GYM', 'image': 'assets/gym.jpg', 'page': GymPage()},
      {'title': 'CARDIO', 'image': 'assets/cardio.jpg', 'page': const CardioPage()},
      {'title': 'HOME WORKOUT', 'image': 'assets/homeworkout.jpg', 'page': HomeWorkoutPage()},
      {'title': 'NUTRITION', 'image': 'assets/nutrition.png', 'page': NutritionPage()},
      {'title': 'ATHLETE', 'image': 'assets/athlete.jpg', 'page': AthletePage()},
     
      // Add more activities and corresponding pages here...
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: activities.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return _buildActivityCard(
          context,
          activities[index]['title'] as String,
          activities[index]['image'] as String,
          activities[index]['page'] as Widget,
        );
      },
    );
  }

  Widget _buildActivityCard(BuildContext context, String title, String backgroundImage, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(4.0),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              backgroundImage,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              color: const Color.fromARGB(255, 204, 199, 199).withOpacity(0.6),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(color: Color.fromARGB(255, 4, 4, 4), fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      unselectedItemColor: Colors.grey[400],
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Schedule'),
        BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Daily Routine'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
            break;
          case 1:
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => GymPage()));
            break;
          case 2:
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Nutri2Page())); // Replace with actual navigation target
            break;
          case 3:
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const UserProfilePage())); // Replace with actual navigation target
            break;
        }
      },
    );
  }

}
