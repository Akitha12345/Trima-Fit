// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'homework1.dart'; // Adjust the import path as necessary

class HomeWorkoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 230, 230),
        title: const Text('Home Workout'),
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/homework.jpg', fit: BoxFit.cover, width: double.infinity),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Select your type',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              padding: const EdgeInsets.all(12.0),
              mainAxisSpacing: 8, // Adjust the spacing as needed
              childAspectRatio: 2.6, // Adjust this value to control the height of the cards
              children: <Widget>[
                _buildOptionCard(context, 'Basic'),
                _buildOptionCard(context, 'Intermediate'),
                _buildOptionCard(context, 'Advanced'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context, String level) {
    return GestureDetector(
      onTap: () {
        // Navigate to the HomeWorkout1Page with the selected workout level
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeWorkout1Page(workoutType: level),
          ),
        );
      },
      child: Card(
        elevation: 4, // Add some shadow
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            level,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
