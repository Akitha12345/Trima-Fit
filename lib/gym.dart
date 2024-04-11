// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'GymExePage.dart'; // Make sure the import path is correct

class GymPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(208, 81, 80, 80),
        title: const Text('Exercises'),
      ),
      backgroundColor: const Color.fromARGB(255, 38, 38, 38),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(
              'assets/gymup.jpg',
              fit: BoxFit.cover,
              height: 180,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 8),
          _buildExerciseItem(context, 'CHEST', 'assets/chest.png'),
          _buildExerciseItem(context, 'BACK', 'assets/back.png'),
          _buildExerciseItem(context, 'BICEPS', 'assets/biceps.png'),
          _buildExerciseItem(context, 'TRICEPS', 'assets/triceps.png'),
          _buildExerciseItem(context, 'SHOULDERS', 'assets/shoulders.png'),
          _buildExerciseItem(context, 'FOREARMS', 'assets/forearm.png'),
          _buildExerciseItem(context, 'HAMSTRING', 'assets/hamstring.png'),
          _buildExerciseItem(context, 'CALVES', 'assets/calves.png'),
          _buildExerciseItem(context, 'QUADRICEPS', 'assets/quadriceps.png'),
          _buildExerciseItem(context, 'ABS', 'assets/abs.png'),
          // Add more exercises as needed
        ],
      ),
    );
  }

  Widget _buildExerciseItem(BuildContext context, String category, String iconPath) {
    return ListTile(
      leading: Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 71, 71, 71),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Image.asset(iconPath, fit: BoxFit.contain),
        ),
      ),
      title: Text(
        category,
        style: const TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(Icons.arrow_forward, color: Color.fromARGB(255, 168, 44, 35)),
      onTap: () {
        // Navigate to GymExePage with the selected category
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GymExePage(category: category)),
        );
      },
      contentPadding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Divider(
          color: Colors.grey[800]!,
          thickness: 1,
        ),
      ),
    );
  }
}
