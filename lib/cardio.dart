// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class CardioPage extends StatelessWidget {
  const CardioPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the top horizontal scrolling cards
    final List<Map<String, dynamic>> topCardData = [
      {
        'imagePath': 'assets/card5.jpg',
        'title': 'Low to Moderate',
        'subtitle': '5 Exercises',
      },
      {
        'imagePath': 'assets/card2.jpg',
        'title': 'High Intensity',
        'subtitle': '5 Exercises',
      },
      {
        'imagePath': 'assets/card3.jpg',
        'title': 'Group Cardio',
        'subtitle': '4 Exercises',
      },
      {
        'imagePath': 'assets/card6.jpg',
        'title': 'Outdoor Cardio',
        'subtitle': '4 Exsecises',
      },
      // Add more data if necessary
    ];
      
    // Sample data for the bottom vertical scrolling list
    final List<Map<String, dynamic>> bottomListData = [
      {
        'title': 'Walking',
        'description': 'A great starting point for beginners, can be done anywhere.',
        'imagePath': 'assets/c11.jpg',
      },
      {
        'title': 'Cycling',
        'description': 'Either stationary or outdoor, excellent for building endurance.',
        'imagePath': 'assets/c12.jpg',
      },
      {
        'title': 'Swimming',
        'description': 'Provides a full-body workout, minimizing joint stress.',
        'imagePath': 'assets/c13.jpg',
      },
      {
        'title': 'Rowing',
        'description': 'Effective for both cardio and strength, engaging many muscle groups.',
        'imagePath': 'assets/c14.jpg',
      },
      {
        'title': 'Elliptical Training',
        'description': 'A low-impact alternative to running, good for joint health.',
        'imagePath': 'assets/c15.jpg',
      },
      {
        'title': 'Runing',
        'description': 'Ideal for building endurance and cardiovascular health.',
        'imagePath': 'assets/c21.jpg',
      },
      {
        'title': 'Jump Rope',
        'description': 'A high-intensity workout that improves coordination and stamina.',
        'imagePath': 'assets/c22.jpg',
      },
      {
        'title': 'HIIT',
        'description': 'Short bursts of intense exercise followed by rest periods, great for improving metabolic rate.',
        'imagePath': 'assets/c23.jpg',
      },
      {
        'title': 'Tabata Workouts',
        'description': '20 seconds of ultra-intense exercise followed by 10 seconds of rest, repeated for 4 minutes.',
        'imagePath': 'assets/c24.jpg',
      },
      {
        'title': 'Sprinting',
        'description': 'Short, high-intensity runs to boost speed and metabolism.',
        'imagePath': 'assets/c25.jpg',
      },
      {
        'title': 'Dance Fitness Classes',
        'description': 'Such as Zumba or Hip-Hop fitness, which combine dance moves with cardio training.',
        'imagePath': 'assets/c31.jpg',
      },  
      {
        'title': 'Kickboxing',
        'description': 'Combines martial arts techniques with fast-paced cardio, improving strength, and endurance.',
        'imagePath': 'assets/c32.jpg',
      },  
      {
        'title': 'Spin Classes',
        'description': 'Indoor cycling classes that often feature high-intensity intervals and upbeat music.',
        'imagePath': 'assets/c33.jpg',
      },  
      {
        'title': 'Aerobics Classes',
        'description': 'Includes step aerobics, traditional aerobics, focusing on rhythmic, cardiovascular exercises.',
        'imagePath': 'assets/c34.jpg',
      },
      {
        'title': 'Hiking',
        'description': 'Engages the whole body and can be adjusted in difficulty by choosing different terrains.',
        'imagePath': 'assets/c41.jpg',
      },
      {
        'title': 'Football',
        'description': 'A sport which helps to improve strength, Fat burning, and metabolism ',
        'imagePath': 'assets/c42.jpg',
      },
      {
        'title': 'Kayaking/Canoeing',
        'description': 'Offers a cardio workout while also building upper body strength.',
        'imagePath': 'assets/c43.jpg',
      },
      {
        'title': 'Rock Climbing',
        'description': 'Indoor or outdoor, combines cardio with strength training and problem-solving.',
        'imagePath': 'assets/c44.jpg',
      },  
      // Add more data if necessary
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 84, 83, 83),
        title: const Text('Cardio Progress'),
      ),
      backgroundColor: const Color.fromARGB(255, 56, 55, 55),
      body: Column(
        children: [
          // Horizontal list of progress cards
          Container( 
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topCardData.length,
              itemBuilder: (context, index) {
                return _buildProgressCard(
                  context,
                  topCardData[index]['imagePath'],
                  topCardData[index]['title'],
                  topCardData[index]['subtitle'],
                );
              },
            ),
          ),
          // Vertical list of images with text
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              '- All Cardio Exercises -',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: bottomListData.length,
              itemBuilder: (context, index) {
                return _buildImageWithText(
                  context,
                  bottomListData[index]['title'],
                  bottomListData[index]['description'],
                  bottomListData[index]['imagePath'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressCard(BuildContext context, String imagePath, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, fit: BoxFit.cover, height: 120),
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(subtitle),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithText(BuildContext context, String title, String description, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 196, 194, 194),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(description),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(imagePath, fit: BoxFit.cover, width: 100, height: 100),
            ),
          ],
        ),
      ),
    );
  }
}
