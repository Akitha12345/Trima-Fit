// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Nutri2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> proteinItems = [
      {'imagePath': 'assets/p12.jpg', 'name': 'Chicken', 'nutrition': '27g of protein'},
      {'imagePath': 'assets/p2.jpg', 'name': 'Eggs', 'nutrition': '13g of protein'},
      {'imagePath': 'assets/p3.jpg', 'name': 'Tuna', 'nutrition': '28g of protein'},
      {'imagePath': 'assets/p4.png', 'name': 'Tilapia', 'nutrition': '26g of protein'},
      {'imagePath': 'assets/p5.jpg', 'name': 'Prawns', 'nutrition': '24g of protein'},
      {'imagePath': 'assets/p6.jpg', 'name': 'Crabs', 'nutrition': '19g of protein'},
      {'imagePath': 'assets/p7.jpg', 'name': 'Dhal(Lentils)', 'nutrition': '9g of protein'},
      {'imagePath': 'assets/p8.jpg', 'name': 'Checkpeas(Kadala)', 'nutrition': '19g of protein'},
      {'imagePath': 'assets/p9.png', 'name': 'Nuts and Seeds', 'nutrition': '21g of protein'},
      {'imagePath': 'assets/p10.jpg', 'name': 'Soy Products', 'nutrition': '36g of protein'},
      {'imagePath': 'assets/p11.jpg', 'name': 'Cows Milk', 'nutrition': '3.4g of protein'},
      {'imagePath': 'assets/c4.jpeg', 'name': 'Oats)', 'nutrition': '12g of protein'},
    ];

    final List<Map<String, dynamic>> carbItems = [
      {'imagePath': 'assets/c1.jpg', 'name': 'Red Rice', 'nutrition': '28g of carbs'},
      {'imagePath': 'assets/c2.jpg', 'name': 'White Rice', 'nutrition': '30g of carbs'},
      {'imagePath': 'assets/c3.png', 'name': 'Kurakkan(Finger Millet)', 'nutrition': '72g of carbs'},
      {'imagePath': 'assets/c112.jpg', 'name': 'Bread', 'nutrition': '49g of carbs'},
      {'imagePath': 'assets/c4.jpeg', 'name': 'Oats', 'nutrition': '66g of carbs'},
      {'imagePath': 'assets/c5.jpg', 'name': 'Manioc', 'nutrition': '38g of carbs'},
      {'imagePath': 'assets/c6.jpg', 'name': 'Sweet Potatoes', 'nutrition': '20g of carbs'},
      {'imagePath': 'assets/c7.jpg', 'name': 'Yams', 'nutrition': '27g of carbs'},
      {'imagePath': 'assets/p7.jpg', 'name': 'Dhal(Lentils)', 'nutrition': '20g of carbs'},
      {'imagePath': 'assets/p8.jpg', 'name': 'Chickpeas', 'nutrition': '27g of carbs'},
      {'imagePath': 'assets/c10.jpeg', 'name': 'Mung Beans', 'nutrition': '19g of carbs'},
      {'imagePath': 'assets/c11.jpeg', 'name': 'Fruits', 'nutrition': '15-20g of carbs'},
    ];

    final List<Map<String, dynamic>> vitaminItems = [
      {'imagePath': 'assets/v1.jpeg', 'name': 'Carrots', 'nutrition': 'About 835 µg of vitamin A'},
      {'imagePath': 'assets/v2.jpg', 'name': 'Pumpkin', 'nutrition': 'Roughly 426 µg of vitamin A'},
      {'imagePath': 'assets/v3.JPG', 'name': 'Sweet Potatoes', 'nutrition': 'Approximately 709 µg of vitamin A'},
      {'imagePath': 'assets/v4.jpg', 'name': 'Kale', 'nutrition': 'Around 681 µg of vitamin A'},
      {'imagePath': 'assets/v5.jpg', 'name': 'Papaya', 'nutrition': 'About 55 µg of vitamin A'},
      {'imagePath': 'assets/v6.jpg', 'name': 'Guava', 'nutrition': 'Roughly 228 mg of vitamin C'},
      {'imagePath': 'assets/v7.jpeg', 'name': 'Bell Peppers', 'nutrition': 'About 128 mg of vitamin C'},
      {'imagePath': 'assets/v8.jpeg', 'name': 'Oranges', 'nutrition': 'Around 53 mg of vitamin C'},
      {'imagePath': 'assets/v9.jpg', 'name': 'Lemons', 'nutrition': 'About 53 mg of vitamin C'},
      {'imagePath': 'assets/v10.jpg', 'name': 'Fatty Fish (mackerel, salmon)', 'nutrition': '16-25 µg per 100g (varies widely)'},
      {'imagePath': 'assets/v11.jpg', 'name': 'Egg Yolks', 'nutrition': 'About 5.6 µg per 100g'},
      {'imagePath': 'assets/v12.jpeg', 'name': 'Sunflower Seeds', 'nutrition': 'Around 33 mg of vitamin E'},
      {'imagePath': 'assets/v13.jpg', 'name': 'Spinach', 'nutrition': 'Roughly 2 mg of vitamin E'},
      {'imagePath': 'assets/v14.jpg', 'name': 'Avocado', 'nutrition': 'About 2.07 mg of vitamin E'},
      {'imagePath': 'assets/v15.jpg', 'name': 'Green Beans', 'nutrition': 'Around 14.4 µg of vitamin K'},
    ];

    final List<Map<String, dynamic>> aminoItems = [
      {'imagePath': 'assets/a1.jpg', 'name': 'Chicken Breast', 'nutrition': 'Rich in Amino Acids'},
      {'imagePath': 'assets/p2.jpg', 'name': 'Eggs', 'nutrition': 'Filled with BCAAs'},
      {'imagePath': 'assets/a2.jpg', 'name': 'Quinoa', 'nutrition': 'Rich in Amino Acids'},
      {'imagePath': 'assets/a3.jpg', 'name': 'Fish', 'nutrition': 'Rich in Amino Acids'},
      {'imagePath': 'assets/p7.jpg', 'name': 'Lentils', 'nutrition': 'Rich in Amino Acids'},
      {'imagePath': 'assets/a3.jpg', 'name': 'Almonds', 'nutrition': 'Rich in Amino Acids and protein'},
      {'imagePath': 'assets/a4.jpg', 'name': 'Greek Yoghurt', 'nutrition': 'Rich in Amino Acids and protein'},
      {'imagePath': 'assets/a5.jpg', 'name': 'Edamame', 'nutrition': 'Rich in Amino Acids'},
    ];

    final List<Map<String, dynamic>> fatItems = [
      {'imagePath': 'assets/a3.jpg', 'name': 'Almonds', 'nutrition': '46 grams of fat'},
      {'imagePath': 'assets/f1.jpg', 'name': 'Olive Oil', 'nutrition': '100 grams of fat'},
      {'imagePath': 'assets/f2.jpg', 'name': 'Coconut Oli', 'nutrition': '100 grams of fat'},
      {'imagePath': 'assets/v10.jpg', 'name': 'Salmon', 'nutrition': '13 grams of fat'},
      {'imagePath': 'assets/f3.jpg', 'name': 'Mackerel', 'nutrition': '25 grams of fat'},
      {'imagePath': 'assets/v14.jpg', 'name': 'Avacado', 'nutrition': '15 grams of fat'},
      {'imagePath': 'assets/f4.jpg', 'name': 'Cheese', 'nutrition': '33 grams of fat'},
      {'imagePath': 'assets/f5.jpg', 'name': 'Dark Chocolate', 'nutrition': '42 grams of fat'},
    ];


    return Scaffold(
      appBar: AppBar(
        title: const Text("Nutrition Guide"),
        backgroundColor: const Color.fromARGB(255, 223, 223, 223),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerImage(),
            categorySelector(),
            horizontalSection("Protein", "Proteins are essential for the body's repair and growth, playing a critical role in healing and in the immune system's function.", proteinItems),
            horizontalSection("Carbohydrates", "Carbohydrates provide the body with glucose, which is converted to energy used to support bodily functions and physical activity.", carbItems),
            horizontalSection("Vitamins", "Vitamins are organic compounds that are essential for supporting bodily functions, growth, and health.", vitaminItems),
            horizontalSection("Amino Acids", "Amino acids are the building blocks of proteins, crucial for various bodily functions, including tissue repair, nutrient absorption, and muscle building. ", aminoItems),
            horizontalSection("Healthy Fats", "Healthy fats, particularly unsaturated fats, are crucial for overall health, supporting heart health, reducing inflammation, and providing a source of energy. ", fatItems),
          ],
        ),
      ),
    );
  }

  Widget headerImage() {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/nutri.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      child: const Text(
        "Wellness\nSri Lankan Style",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Widget categorySelector() {
    List<String> categories = ["Proteins", "carbohydrates", "Vitamins", "Amino Acids", "Healthy Fats"];
    return Container(
      height: 44,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Text(
            categories[index],
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget horizontalSection(String title, String description, List<Map<String, dynamic>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(description, textAlign: TextAlign.justify),
        ),
        Container(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) => Container(
              width: 180,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 59, 58, 58),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      items[index]['imagePath'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items[index]['name'],
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text(
                            items[index]['nutrition'],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}