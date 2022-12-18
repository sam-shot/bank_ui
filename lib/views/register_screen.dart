import 'package:bank_ui/components/button.dart';
import 'package:bank_ui/components/spacing.dart';
import 'package:bank_ui/components/text_style.dart';
import 'package:bank_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    final width;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Stack(children: [
        Positioned(
          top: 60,
          left: 10,
          child: IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png"),
                Spacing.height(50),
                TextFormField(
                  autofocus: true,
                  style: Style.body1.copyWith(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle:
                        Style.body1.copyWith(color: Colors.white.withOpacity(0.5)),
                    hintText: "E.g Samuel Ademujimi",
                    hintStyle:
                        Style.body1.copyWith(color: Colors.white.withOpacity(0.5)),
                    alignLabelWithHint: true,
                    floatingLabelStyle: Style.body1.copyWith(
                      color: Color.fromARGB(255, 32, 116, 53),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                    ),
                  ),
                ),
                Spacing.height(10),
                TextFormField(
                  style: Style.body1.copyWith(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    hintText: "Enter phone number",
                    labelStyle:
                        Style.body1.copyWith(color: Colors.white.withOpacity(0.5)),
                    hintStyle:
                        Style.body1.copyWith(color: Colors.white.withOpacity(0.5)),
                    alignLabelWithHint: true,
                    floatingLabelStyle: Style.body1.copyWith(
                      color: Color.fromARGB(255, 32, 116, 53),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                    ),
                  ),
                ),
                TextFormField(
                  style: Style.body1.copyWith(color: Colors.white),
                  obscureText: !showPass,
                  decoration: InputDecoration(
                    suffix: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          showPass = !showPass;
                          setState(() {});
                        },
                        icon: showPass
                            ? Icon(Icons.visibility_rounded)
                            : Icon(Icons.visibility_off_rounded)),
                    labelText: "Password",
                    hintText: "Enter password",
                    labelStyle:
                        Style.body1.copyWith(color: Colors.white.withOpacity(0.5)),
                    hintStyle:
                        Style.body1.copyWith(color: Colors.white.withOpacity(0.5)),
                    alignLabelWithHint: true,
                    floatingLabelStyle: Style.body1.copyWith(
                      color: Color.fromARGB(255, 32, 116, 53),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                    ),
                  ),
                ),
                Spacing.height(100),
                Button(
                    height: 50,
                    width: width,
                    text: "Continue",
                    ontap: () {
                      Navigator.pushNamed(context, '/otpscreen');
                    },
                    color: Colors.white,
                    style: Style.body1)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
