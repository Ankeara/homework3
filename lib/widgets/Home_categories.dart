import 'package:flutter/material.dart';
import 'package:homework3/screens/filter_screen.dart';

import '../models/category.dart';

class Home_categories extends StatelessWidget {
  const Home_categories({
    super.key,
    required this.categories,
    required this.colors,
  });

  final List<Category> categories;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.asMap().entries.map((entry) {
          int index = entry.key;
          Category category = entry.value;

          return GestureDetector(
            onTap: () {
              // Navigate to another screen when the container is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilterScreen(), // Pass the category data to the new screen if needed
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    width: 60, // Adjust width as needed
                    height: 60, // Adjust height as needed
                    decoration: BoxDecoration(
                      color: colors[index %
                          colors
                              .length], // Set background color using colors list
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        // Proper way to add a border
                        color: Colors.white, // Border color (adjust as needed)
                        width: 4, // Border width (adjust as needed)
                      ),
                    ),
                    child: Center(
                      // Center the image in the container
                      child: Image.asset(
                        category.imageUrl,
                        width:
                            30, // Make the image smaller by decreasing the width
                        height:
                            30, // Make the image smaller by decreasing the height
                        fit: BoxFit.contain, // Ensure the image scales properly
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 5), // Optional space between image and text
                  Text(
                    category.text,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ), // Adjust text style as needed
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
