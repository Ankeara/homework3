import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../screens/home_screen.dart';

class Filter_appbar extends StatelessWidget {
  const Filter_appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween, // To center items vertically
      children: [
        // Back arrow icon button (top-left)
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          style: IconButton.styleFrom(fixedSize: const Size(48, 48)),
          icon: const Icon(Iconsax.arrow_left),
        ),

        // Row for image and text (centered)
        Column(
          children: [
            Row(
              children: [
                // Image with background color and border radius
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFDFA6), // Background color
                    borderRadius: BorderRadius.circular(30), // Border radius
                  ),
                  padding:
                      const EdgeInsets.all(8), // Padding inside the container
                  child: Image.asset(
                    'assets/images/tooth-brush.png',
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(width: 10), // Space between image and text
                // Text ("Care")
                const Text(
                  "Care",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        // Filter icon button (top-right)
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.filter_add),
        ),
      ],
    );
  }
}
