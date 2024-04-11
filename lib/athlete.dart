// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AthletePage extends StatelessWidget {
  final List<Map<String, dynamic>> exercises = [
    {
      'imagePath': 'assets/ath1.jpg',
      'name': 'Squats',
      'description': 'Builds strength in the legs and core, foundational for power in many sports.',
    },
    {
      'imagePath': 'assets/ath2.jpg',
      'name': 'Deadlit',
      'description': 'Enhances posterior chain strength, crucial for sprinting and jumping.',
    },
    {
      'imagePath': 'assets/ath3.png',
      'name': 'Power Cleans',
      'description': 'Develops explosive power, important for quick, powerful movements.',
    },
    {
      'imagePath': 'assets/ath4.jpg',
      'name': 'Bench Press: ',
      'description': 'Increases upper body strength, beneficial for sports requiring pushing movements.',
    },
    {
      'imagePath': 'assets/ath5.jpg',
      'name': 'Plyometric Exercises',
      'description': 'Improves explosive power and speed.',
    },
    {
      'imagePath': 'assets/ath7.png',
      'name': 'Agility Ladder Drills',
      'description': 'Improves foot speed, coordination, and agility.',
    },
    {
      'imagePath': 'assets/ath8.jpg',
      'name': 'Cone Drills',
      'description': 'Enhances directional change and agility.',
    },
    {
      'imagePath': 'assets/ath9.jpg',
      'name': 'Shuttle Runs',
      'description': 'Develops acceleration, deceleration, and agility.',
    },
    {
      'imagePath': 'assets/ath10.jpg',
      'name': 'Long Runs',
      'description': 'Builds aerobic endurance, important for sports requiring sustained efforts.',
    },
    {
      'imagePath': 'assets/ath11.jpg',
      'name': 'Cycling or Rowing',
      'description': 'Low-impact options for building endurance and leg strength.',
    },
    {
      'imagePath': 'assets/ath12.jpg',
      'name': 'Planks and Side Planks',
      'description': 'Strengthens the core, improving posture and athletic performance.',
    },
    {
      'imagePath': 'assets/ath6.jpg',
      'name': 'Sprints',
      'description': 'Boosts speed and enhances anaerobic endurance.',
    },
    // Add more exercises as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Athlete Exercises"),
        backgroundColor: const Color.fromARGB(255, 76, 76, 76),
      ),
      backgroundColor: Colors.grey[850],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/athlete1.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "This exercise regimen is tailored for athletes, focusing on improving strength, power, agility, endurance, flexibility, and balance. Key components include strength exercises like squats and deadlifts for muscle power, speed drills like sprints for quickness, endurance workouts such as long runs, and flexibility practices including yoga. Core strengthening and balance exercises are also emphasized to enhance stability and athletic performance. Designed to cater to the comprehensive needs of athletes, this program aims to boost overall physical capabilities and competitive performance.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            ...exercises.map((exercise) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 218, 218, 218),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        exercise['imagePath'],
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                exercise['name'],
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(exercise['description']),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )).toList(),
          ],
        ),
      ),
    );
  }
}
