import 'package:flutter/material.dart';
import 'package:homework3/screens/home_screen.dart';
import 'package:iconsax/iconsax.dart';

import '../main.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screen = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
                // spreadRadius: 5, // Spread the shadow
                // blurRadius: 10, // Blur effect
                // offset: Offset(0, 3), // Horizontal and vertical shadow offset
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                      color: currentTab == 0 ? kPrimaryColor : Colors.grey,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      currentTab == 1 ? Iconsax.heart5 : Iconsax.heart,
                      color: currentTab == 1 ? kPrimaryColor : Colors.grey,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      currentTab == 2
                          ? Iconsax.shopping_cart5
                          : Iconsax.shopping_cart,
                      color: currentTab == 2 ? kPrimaryColor : Colors.grey,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      currentTab == 3 ? Iconsax.user5 : Iconsax.user,
                      color: currentTab == 3 ? kPrimaryColor : Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: screen[currentTab],
    );
  }
}
