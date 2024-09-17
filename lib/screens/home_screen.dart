import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../models/items.dart';
import '../widgets/Home_appbar.dart';
import '../widgets/Home_categories.dart';
import '../widgets/Home_items.dart';
import '../widgets/Home_searchbar.dart';
import '../models/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Category> categories = [
    Category(text: "Care", imageUrl: "assets/images/tooth-brush.png"),
    Category(text: "Heart", imageUrl: "assets/images/heart-beat.png"),
    Category(text: "Brain", imageUrl: "assets/images/brain.png"),
    Category(text: "Lung", imageUrl: "assets/images/lungs.png"),
    Category(text: "Stomach", imageUrl: "assets/images/stomach.png"),
  ];

  final List<Color> colors = [
    Color(0xFFFFDFA6),
    Color(0xFFF4B6B6),
    Color(0xFFD0CAF4), //0xFFD0CAF4
    Color(0xFFA3E6CD), //0xFFA3E6CD
    Color(0xFFA8EAEF), //0xFFA8EAEF
    // Add more colors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBF0FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                const SizedBox(
                  height: 20,
                ),
                HomeSearchbar(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/banner.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Home_categories(categories: categories, colors: colors),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Show all"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Home_items()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
