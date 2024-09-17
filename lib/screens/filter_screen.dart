import 'package:flutter/material.dart';
import 'package:homework3/main.dart';
import 'package:homework3/models/items.dart';
import 'package:homework3/screens/home_screen.dart';
import 'package:homework3/widgets/FIlter_appbar.dart';
import 'package:homework3/widgets/Products.dart';
import 'package:iconsax/iconsax.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int currentTab = 0;

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
              Padding(
                padding: const EdgeInsets.all(1),
                child: Filter_appbar(),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Row(
                  children: [
                    Icon(Iconsax.search_normal),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTab = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: currentTab == 0 ? kPrimaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        child: Text(
                          "Baby & kid",
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTab = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: currentTab == 1 ? kPrimaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        child: Text(
                          "Body",
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTab = 2;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: currentTab == 2 ? kPrimaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        child: Text(
                          "Teeth & Mouth",
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTab = 3;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: currentTab == 3 ? kPrimaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        child: Text(
                          "Face wash",
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTab = 4;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: currentTab == 4 ? kPrimaryColor : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        margin: const EdgeInsets.only(right: 10),
                        child: Text(
                          "Shampoo",
                          style: TextStyle(
                            color: currentTab == 4 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 2,
                ),
                itemBuilder: (context, index) => ProductCard(index: index),
                itemCount: items.length,
              )
            ],
          ),
        )),
      ),
    );
  }
}
