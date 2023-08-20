import 'package:flutter/material.dart';
import 'package:smart_home/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dana-X",
      
      theme: ThemeData(
        fontFamily: 'Poppins',
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home:   OnBoardingScreen(),
    );
  }
}
