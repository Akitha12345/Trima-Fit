import 'package:flutter/material.dart';

// Define a model for Exercise for better type handling
class Exercise {
  final String name;
  final String imagePath;
  final String description;

  Exercise({
    required this.name,
    required this.imagePath,
    required this.description,
  });
}

// The ExerciseCard is a widget that shows the exercise details
class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({
    Key? key,
    required this.exercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showExerciseDetailsDialog(context, exercise),
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              exercise.imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exercise.name,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(exercise.description),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showExerciseDetailsDialog(BuildContext context, Exercise exercise) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                exercise.imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  exercise.name,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  exercise.description,
                  textAlign: TextAlign.justify,
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}

// This page will take a workout type and display the exercises for that type
class HomeWorkout1Page extends StatelessWidget {
  final String workoutType;

  HomeWorkout1Page({Key? key, required this.workoutType}) : super(key: key);

  // Example data for each workout type
  final Map<String, List<Exercise>> workoutExercises = {
    'Basic': [
      Exercise(name: 'Bodyweight Squats', imagePath: 'assets/bas1.jpg', description: '3 sets of 10-12 reps'),
      Exercise(name: 'Push-Ups/Knee Push-Ups', imagePath: 'assets/bas2.jpg', description: '3 sets of 8-10 reps'),
      Exercise(name: 'Plank', imagePath: 'assets/bas3.jpg', description: '3 sets, hold for 20-30 seconds'),
      Exercise(name: 'Lunges', imagePath: 'assets/bas4.jpg', description: '3 sets of 10 reps on each leg'),
      Exercise(name: 'Glute Bridges', imagePath: 'assets/bas5.jpg', description: '3 sets of 12 reps'),
      Exercise(name: 'Mountain Climbers', imagePath: 'assets/bas6.jpg', description: '3 sets of 30 seconds'),
      Exercise(name: 'Arm Circles', imagePath: 'assets/bas7.jpg', description: '3 sets of 30 seconds forward, 30 seconds backward'),
      Exercise(name: 'Bird Dog', imagePath: 'assets/bas8.jpg', description: '3 sets of 10 reps on each side'),
      // Add more exercises here
    ],
    'Intermediate': [
      Exercise(name: 'Squats with Jump', imagePath: 'assets/int1.jpg', description: '3 sets of 12-15 reps'),
      Exercise(name: 'Diamond Push-Ups', imagePath: 'assets/int2.jpg', description: '3 sets of 10-12 reps'),
      Exercise(name: 'Side Plank', imagePath: 'assets/int3.jpg', description: '3 sets per side, hold for 30-45 seconds'),
      Exercise(name: 'Walking Lunges', imagePath: 'assets/int4.jpg', description: '3 sets of 12 reps on each leg (hold weights if possible)'),
      Exercise(name: 'Single-Leg Glute Bridges', imagePath: 'assets/int5.jpg', description: ' 3 sets of 10 reps on each leg'),
      Exercise(name: 'Tricep Dips', imagePath: 'assets/int6.jpg', description: '3 sets of 10-12 reps'),
      Exercise(name: 'Russian Twists', imagePath: 'assets/int7.jpg', description: '3 sets of 15 reps on each side (use weight if available)'),
      Exercise(name: 'High Knees', imagePath: 'assets/int8.jpg', description: '3 sets of 30 seconds for cardio and leg endurance'),
      // Add more exercises here
    ],
    'Advanced': [
      Exercise(name: 'Pistol Squats', imagePath: 'assets/ad1.jpg', description: '3 sets of 6-8 reps on each leg'),
      Exercise(name: 'Push-Ups with Single Arm Raise', imagePath: 'assets/ad2.jpg', description: '3 sets of 8-10 reps'),
      Exercise(name: 'Plank to Push-Up', imagePath: 'assets/ad3.jpg', description: '3 sets of 10-12 reps'),
      Exercise(name: 'Jumping Lunges', imagePath: 'assets/ad4.jpg', description: '3 sets of 15 reps on each leg'),
      Exercise(name: 'Nordic Hamstring Curls', imagePath: 'assets/ad5.jpg', description: '3 sets of 6-8 reps'),
      Exercise(name: 'Burpees', imagePath: 'assets/ad6.jpg', description: '3 sets of 10-15 reps'),
      Exercise(name: 'Hanging Leg Raises', imagePath: 'assets/ad7.jpg', description: '3 sets of 8-10 reps'),
      Exercise(name: 'Box Jumps', imagePath: 'assets/ad8.jpg', description: '3 sets of 10-12 reps'),
      // Add more exercises here
    ],
  };

  @override
  Widget build(BuildContext context) {
    final exercises = workoutExercises[workoutType] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text('$workoutType Workout'),
        backgroundColor: const Color.fromARGB(255, 229, 228, 228),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return ExerciseCard(exercise: exercises[index]);
        },
      ),
    );
  }
}
