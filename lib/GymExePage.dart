// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Exercise {
  final String name;
  final String imagePath;
  final String description;

  Exercise({required this.name, required this.imagePath, required this.description});
}

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({Key? key, required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showExerciseDetailsDialog(context, exercise),
      child: Card(
        margin: const EdgeInsets.all(10.0), // Increase the margin around the card
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0), // Add padding around the image
              child: Image.asset(
                exercise.imagePath,
                width: 140,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0), // Increase padding inside the card
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

// Modify this page to fetch and display exercises based on the selected category
class GymExePage extends StatelessWidget {
  final String category;

  GymExePage({Key? key, required this.category}) : super(key: key);

  // Mock data for demonstration. You should replace it with your actual data
  final Map<String, List<Exercise>> exercisesByCategory = {
    'CHEST': [
      Exercise(name: "Dumbbell Chest Flys", imagePath: "assets/chest1.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Incline Bench Press", imagePath: "assets/chest3.jpg", description: "3 sets of 8-10 reps"),
      Exercise(name: "Cable Crossover", imagePath: "assets/chest4.jpg", description: "3 sets of 8-10 reps"),
      Exercise(name: "Machine Chest Press", imagePath: "assets/chest5.webp", description: "3/4 sets of 8-10 reps"),
      Exercise(name: "Pec Deck Machine Flys", imagePath: "assets/chest6.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Flat Dumbbell Press", imagePath: "assets/chest11.jpeg", description: "3 sets of 8-10 reps"),
      Exercise(name: "Incline Dumbbell Press", imagePath: "assets/chest8.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Push-Ups", imagePath: "assets/chest9.webp", description: "3/4 sets of 10-15 reps"),
      Exercise(name: "Diamond Push-Ups", imagePath: "assets/chest10.png", description: "3 sets of 10-12 reps"),
      // Add more chest exercises
    ],

    'BACK': [
      Exercise(name: "Deadlifts", imagePath: "assets/back1.webp", description: "3/4 sets of 8-10 reps"),
      Exercise(name: "Lat Pulldowns", imagePath: "assets/back2.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Bent-Over Rows", imagePath: "assets/back3.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "T-Bar Rows", imagePath: "assets/back4.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Seated Cable Rows", imagePath: "assets/back5.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Pull-Ups/Chin-Ups", imagePath: "assets/back6.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Single-Arm Dumbbell Row", imagePath: "assets/back7.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Face Pulls", imagePath: "assets/back8.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Hypherextension", imagePath: "assets/back9.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Reverse Pulldown", imagePath: "assets/back10.webp", description: "3 sets of 8-10 reps"),
      // Add more chest exercises
    ],

    'BICEPS': [
      Exercise(name: "Barbell Curl", imagePath: "assets/bi1.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Dumbbell Curl", imagePath: "assets/bi2.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Hammer Curl", imagePath: "assets/bi3.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Preacher Curl", imagePath: "assets/bi4.webp", description: "3/4 sets of 8-10 reps"),
      Exercise(name: "Cable Curl", imagePath: "assets/bi5.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Concentration Curl", imagePath: "assets/bi6.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Incline Dumbbell Curl", imagePath: "assets/bi7.webp", description: "3 sets of 8-10 reps"),
      // Add more chest exercises
    ],

    'TRICEPS': [
      Exercise(name: "Close-Grip Bench Press", imagePath: "assets/tr1.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Cable Tricep Pushdown", imagePath: "assets/tr2.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Skull Crushers", imagePath: "assets/tr3.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Overhead Tricep Extension", imagePath: "assets/tr4.webp", description: "3/4 sets of 8-10 reps"),
      Exercise(name: "Tricep Dips", imagePath: "assets/tr5.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Tricep Kickbacks", imagePath: "assets/tr6.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Diamond Push-Ups", imagePath: "assets/tr7.png", description: "3 sets of 8-10 reps"),
      // Add more chest exercises
    ],

    'SHOULDERS': [
      Exercise(name: "Overhead Press", imagePath: "assets/sho1.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Arnold Press", imagePath: "assets/sho2.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Lateral Raises", imagePath: "assets/sho3.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Front Raises", imagePath: "assets/sho4.webp", description: "3/4 sets of 8-10 reps"),
      Exercise(name: "Rear Delt Flys", imagePath: "assets/sho5.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Upright Rows", imagePath: "assets/sho6.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Shrugs", imagePath: "assets/sho7.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Face Pulls", imagePath: "assets/sho8.png", description: "3 sets of 8-10 reps"),
      // Add more chest exercises
    ],

    'FOREARMS': [
      Exercise(name: "Wrist Curls", imagePath: "assets/for1.webp", description: "3 sets of 20-25 reps"),
      Exercise(name: "Reverse Wrist Curls", imagePath: "assets/for2.webp", description: "3 sets of 20-23 reps"),
      Exercise(name: "Farmer’s Walk", imagePath: "assets/for3.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Hammer Curls", imagePath: "assets/for4.png", description: "3/4 sets of 8-10 reps"),
      // Add more chest exercises
    ],

    'HAMSTRING': [
      Exercise(name: "Stiff-Legged Deadlifts", imagePath: "assets/ham1.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Leg Curls", imagePath: "assets/ham2.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Glute-Ham Raise", imagePath: "assets/ham3.jpg", description: "3 sets of 8-10 reps"),
      Exercise(name: "Single-Leg Deadlift", imagePath: "assets/ham4.webp", description: "3/4 sets of 8-10 reps"),
      Exercise(name: "Cable Pull-Throughs", imagePath: "assets/ham5.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Romanian Deadlift", imagePath: "assets/ham6.webp", description: "3 sets of 8-10 reps"),
      // Add more chest exercises
    ],

    'CALVES': [
      Exercise(name: "Standing Calf Raises", imagePath: "assets/caf1.webp", description: "3 sets of 20-25 reps"),
      Exercise(name: "Seated Calf Raises", imagePath: "assets/caf2.webp", description: "3 sets of 20-23 reps"),
      Exercise(name: "Smith Machine Calf Raises", imagePath: "assets/caf3.jpg", description: "3 sets of 8-10 reps"),
      Exercise(name: "Dumbbell Calf Raises", imagePath: "assets/caf4.png", description: "3/4 sets of 8-10 reps"),
      // Add more chest exercises
    ],

    'QUADRICEPS': [
      Exercise(name: "Barbell Squat", imagePath: "assets/hams1.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Leg Press", imagePath: "assets/hams2.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Hack Squat", imagePath: "assets/hams3.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Leg Extension", imagePath: "assets/hams4.webp", description: "3/4 sets of 8-10 reps"),
      Exercise(name: "Front Squat", imagePath: "assets/hams5.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Bulgarian Split Squat", imagePath: "assets/hams6.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Walking Lunges", imagePath: "assets/hams7.webp", description: "3 sets of 8-10 reps"),
      // Add more chest exercises
    ],

    'ABS': [
      Exercise(name: "Cable Crunches", imagePath: "assets/ab1.png", description: "3/4 sets of 8-10 reps"),
      Exercise(name: "Hanging Leg Raises", imagePath: "assets/ab2.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Weighted Russian Twists", imagePath: "assets/ab3.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Ab Roller", imagePath: "assets/ab4.png", description: "3 sets of 8-10 reps"),
      Exercise(name: "Pallof Press", imagePath: "assets/ab5.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Planks", imagePath: "assets/ab6.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Bicycle Crunches", imagePath: "assets/ab7.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Leg Raises", imagePath: "assets/ab8.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Side Planks", imagePath: "assets/ab9.webp", description: "3 sets of 8-10 reps"),
      Exercise(name: "Reverse Crunches", imagePath: "assets/ab10.webp", description: "3 sets of 8-10 reps"),
      // Add more chest exercises
    ],

    // Add exercises for other categories
  };

  @override
  Widget build(BuildContext context) {
    List<Exercise> exercises = exercisesByCategory[category] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Exercises'),
        backgroundColor: const Color.fromARGB(255, 231, 230, 230),
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
