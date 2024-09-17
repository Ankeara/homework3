import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homework3/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Homework",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(), // using a Google font
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        scaffoldBackgroundColor: kBackgroundColor,
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

// Define the colors
const Color kPrimaryColor = Colors.blue;
const Color kBackgroundColor = Colors.white;
const Color kBlack = Colors.black45;
