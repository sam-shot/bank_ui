import 'package:bank_ui/components/button.dart';
import 'package:bank_ui/components/spacing.dart';
import 'package:bank_ui/components/text_style.dart';
import 'package:bank_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width, height;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: Style.h1,
              ),
              const Spacing.height(20),
              Text(
                "Let's try SEWA now! \nAnd get the best solution",
                style: Style.h3,
                textAlign: TextAlign.center,
              ),
              Image.asset("assets/images/finances.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: AppColor.mainColor,
                    ),
                  ),
                  const Spacing.width(5),
                  ClipOval(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacing.height(100),
              Button(
                height: 50,
                width: width,
                text: "Get Started",
                ontap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
