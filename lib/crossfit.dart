// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CrossFit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 68, 68),
        title: const Text('CrossFit',),
      ),
      backgroundColor: const Color.fromARGB(255, 38, 38, 38),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  'assets/crossfit1.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                '- CrossFit Exercises -',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            // List of exercises
            _buildImageWithText(context, 'assets/pushups.jpg', 'Push Ups', 'A bodyweight exercise that targets the chest, shoulders, and triceps. You lower your body to the ground and push back up, maintaining a straight line from head to heels.'),
            _buildImageWithText(context, 'assets/pullups.jpg', 'Pull Ups', 'Performed by hanging from a bar and pulling yourself up until your chin is above the bar, targeting the upper back, biceps, and forearms.'),
            _buildImageWithText(context, 'assets/running.jpg', 'Running','A cardiovascular exercise involving moving rapidly on foot, enhancing heart health, endurance, and burning calories.'),
            _buildImageWithText(context, 'assets/burpees.jpg', 'Burpees','A full-body exercise involving a squat, jump, push-up, and another jump into a standing position, great for strength and aerobic endurance.'),
            _buildImageWithText(context, 'assets/rowing.jpg', 'Rowing','Utilizes a rowing machine to mimic the action of rowing a boat, working the legs, back, arms, and core, while also providing cardiovascular benefits.'),
            _buildImageWithText(context, 'assets/deadlift.jpg', 'Deadlift','Involves lifting a loaded barbell off the ground to the level of the hips, then lowering it back down, targeting the back, glutes, and hamstrings.'),
            _buildImageWithText(context, 'assets/squats.jpg', 'Squats','A lower body exercise where you lower your hips from a standing position and then stand back up, targeting the quads, hamstrings, and glutes.'),
            _buildImageWithText(context, 'assets/cleanjerk.jpg', 'Clean & Jerks','A two-part Olympic weightlifting move that involves lifting the barbell from the floor to your shoulders (clean) and then pushing it overhead (jerk), working the entire body.'),
            _buildImageWithText(context, 'assets/snatch.jpg', 'Snatch','Another Olympic lift where the barbell is lifted from the floor to overhead in one smooth motion, requiring strength, flexibility, and coordination.'),
            _buildImageWithText(context, 'assets/boxjumps.jpeg', 'Box Jumps',' Involve jumping with both feet onto a box and back down to the floor, improving power, strength, and agility.'),
            _buildImageWithText(context, 'assets/swing.jpg', 'Kettlebell Swings','Typically performed with a kettlebell, where you swing the weight from between the knees to eye level or above, focusing on the hips, glutes, and core.'),
            _buildImageWithText(context, 'assets/wallbells.jpg', 'Wall Balls','Involves squatting and then throwing a weighted ball to a target on a wall, catching it, and repeating, targeting the quads, glutes, shoulders, and arms.'),
            _buildImageWithText(context, 'assets/situps.jpg', 'Sit Ups','A core exercise where you lie on your back and lift your torso up towards your thighs, then lower back down.'),
            _buildImageWithText(context, 'assets/plank.jpg', 'Planks','An isometric core strength exercise where you hold a position similar to a push-up for as long as possible.'),
            _buildImageWithText(context, 'assets/muscleups.jpg', 'Muscle Ups','A complex move that starts with a pull-up followed by a transition to a dip, lifting your entire body above the bar, targeting the upper body and core.'),
            // Add more exercises as needed...
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithText(BuildContext context, String imagePath, String title, String description) {
    return GestureDetector(
      onTap: () => _showExerciseDetailsDialog(context, title, imagePath, description),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity),
              Container(
                color: Colors.black.withOpacity(0.7),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showExerciseDetailsDialog(BuildContext context, String title, String imagePath, String description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  description,
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
