import 'package:flutter/material.dart';
import 'package:homework3/models/items.dart';
import 'package:iconsax/iconsax.dart';

class ProductCard extends StatelessWidget {
  final int index; // Pass index of the item

  const ProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal:5, vertical: 10),
        width: 210,
        height: 100,
        padding:
            const EdgeInsets.all(10), // Adjust padding for consistent layout
        decoration: BoxDecoration(
          color: Colors.white, // Set background color to white for each card
          borderRadius: BorderRadius.circular(10), // Slightly rounder corners
          boxShadow: [
            BoxShadow(
              color:
                  Colors.black.withOpacity(0.1), // Subtle shadow for elevation
              blurRadius: 5,
              spreadRadius: 2,
              offset: const Offset(0, 2), // Soft bottom shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            // Background Container
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Set your desired background color here
                borderRadius: BorderRadius.circular(
                    10), // Match this with the border radius of the product image
              ),
            ),

            IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Image
                  Container(
                    height:
                        160, // Adjusted for better proportional image height
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(items[index].image),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Category
                  Text(
                    items[index].subcate,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(height: 5),

                  // Product Name
                  Text(
                    items[index].name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis, // Prevents text overflow
                  ),
                  const SizedBox(height: 5),

                  // Product Type
                  Text(
                    items[index].typeitem,
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  const SizedBox(height: 5),

                  // Price and Add to Cart Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${items[index].price.toStringAsFixed(2)}", // Formats the price to 2 decimal places
                        style: const TextStyle(
                          color: Color(0xFF131842),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Add to cart functionality
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero, // Removes default padding
                          backgroundColor: const Color(0xFF615EFC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          fixedSize: const Size(30, 30), // Adjusted button size
                        ),
                        child: const Icon(Iconsax.shopping_cart,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
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
        ));
  }
}
