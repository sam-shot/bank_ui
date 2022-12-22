import 'package:bank_ui/views/home_screen.dart';
import 'package:bank_ui/views/navigation_screen.dart';
import 'package:bank_ui/views/onboarding_screen.dart';
import 'package:bank_ui/views/otp_verification.dart';
import 'package:bank_ui/views/register_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);

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
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/register': (context) => const RegisterScreen(),
        '/otpscreen': (context) => const OtpVerificationScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/navigationscreen': (context) => const NavigationScreen(),
      },
    );
  }
}
