import 'package:bank_ui/views/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bank UI",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: OnboardingScreen(),
    );
  }
}

