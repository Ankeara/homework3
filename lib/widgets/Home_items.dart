import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../models/items.dart';

class Home_items extends StatelessWidget {
  const Home_items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            items.length,
            (index) => Container(
              margin: const EdgeInsets.only(right: 15),
              width: 200,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white, // Set background color to white
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(items[index].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "${items[index].subcate}",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        items[index].name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "${items[index].typeitem}",
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${items[index].price.toStringAsFixed(2)}", // Formats the price to 2 decimal places
                            style: const TextStyle(
                              color: Color(0xFF131842),
                              fontWeight: FontWeight.bold,
                              fontSize: 17, // Custom color
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: Color(0xFF615EFC),
                              fixedSize: const Size(35, 35),
                            ),
                            icon: const Icon(Iconsax.shopping_cart,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Positioned heart icon at the top-right corner
                  Positioned(
                    top: 5,
                    right: 5,
                    child: IconButton(
                      onPressed: () {
                        // Add your like or favorite functionality here
                      },
                      icon: const Icon(Iconsax.heart, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
