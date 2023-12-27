import 'package:fitnest_x/constants/color_extension.dart';
import 'package:fitnest_x/view/screens/onboarding/started_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness X',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: TColor.primaryColor1, fontFamily: "Poppins"),
      home: const StartedScreen(),
    );
  }
}
