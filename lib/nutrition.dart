// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'nutri2.dart';

class NutritionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150.0,
            pinned: true,
            automaticallyImplyLeading: false, // This line removes the back button
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Wellness\nSri Lankan Style", textAlign: TextAlign.left, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
              background: Image.asset('assets/nutri.jpg', fit: BoxFit.cover),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                 "Sri Lanka, an island nation with a rich cultural tapestry, boasts a culinary heritage that is as diverse as its landscapes. This vibrant cuisine has been shaped by various factors over the centuries, including historical trade routes, colonial influences, and the island’s bountiful natural resources. The result is a food culture that is both unique and rich in flavors, textures, and nutritional benefits.\n\n"
                "Central to Sri Lankan cuisine is rice, a staple that forms the foundation of most meals, whether it be the simple and revered plain rice served with curry or the festive yellow rice seen at celebrations. Rice is not just a source of carbohydrates; it's a symbol of life and prosperity, integral to Sri Lanka’s culinary and cultural identity.\n\n"
                "Coconut is another cornerstone of Sri Lankan cooking, utilized in all its forms—coconut milk adds creaminess to curries, grated coconut is a key ingredient in sambols, and coconut oil is used for frying and sautéing. Beyond its culinary uses, coconut is valued for its nutritional benefits, including healthy fats that are known to support heart health and metabolism.\n\n"
                "The island's abundant seas and rivers make seafood a prominent feature in the Sri Lankan diet. Fish, prawns, crabs, and squid, prepared in a myriad of ways, are not only sources of high-quality protein but also rich in omega-3 fatty acids, crucial for brain health and reducing inflammation.\n\n"
                "Sri Lankan cuisine is also renowned for its wide array of fruits and vegetables, from leafy greens like gotukola and spinach to tropical fruits such as mango, pineapple, and papaya. These are not only used to create delicious and colorful dishes but are also packed with vitamins, minerals, and antioxidants, supporting overall health and well-being.\n\n"
                "Legumes play a significant role as well, with dhal (lentils) being a primary protein source for many, especially among vegetarian communities. Legumes are not only protein-rich but also contain essential nutrients like iron, folate, and fiber, contributing to digestive health and disease prevention.\n\n"
                "The use of spices is another hallmark of Sri Lankan cooking, with turmeric, cinnamon, curry leaves, and pandan leaves not just adding flavor but also offering various health benefits, including anti-inflammatory and antimicrobial properties.\n\n"
                "In summary, the nutritional heritage of Sri Lanka is a testament to the island’s rich history, diverse cultures, and abundant natural resources. Its cuisine, characterized by the judicious use of rice, coconut, an array of fruits and vegetables, legumes, and seafood, not only delights the palate but also offers a plethora of health benefits, making Sri Lankan food a true treasure trove of nutritional wealth.",
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity, // Make the button take the full width
          child: ElevatedButton(
            onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Nutri2Page()), // Navigate to Nutri2Page when button pressed
      );
    },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow, // Button background color
              foregroundColor: Colors.black, // Button text color
              textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16), // Bold text
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Reduced curveness
              ),
            ),
            child: const Text("Let's GO!"),
          ),
        ),
      ),
    );
  }
}
