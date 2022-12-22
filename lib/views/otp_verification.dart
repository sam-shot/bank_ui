import 'dart:async';

import 'package:bank_ui/components/spacing.dart';
import 'package:bank_ui/components/text_style.dart';
import 'package:bank_ui/constants/colors.dart';
import 'package:bank_ui/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  late Timer _timer;
  int _start = 30;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 60,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      color: AppColor.mainColor,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                  Text("OTP Verification", style: Style.body1),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Please Enter \nOTP Verification",
                      style: Style.body1.copyWith(color: Colors.black)),
                  const Spacing.height(15),
                  Row(
                    children: [
                      Text(
                        "Resend OTP again in ",
                        style: Style.body2,
                      ),
                      Text(_start.toString(),
                          style: Style.body2.copyWith(color: Colors.red)),
                    ],
                  ),
                  const Spacing.height(40),
                  OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 40,
                    style: const TextStyle(fontSize: 17),
                    obscureText: true,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    onCompleted: (pin) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            Timer(const Duration(seconds: 3), () {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, '/navigationscreen');
                            });
                            return Dialog(
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30)), //this right here
                              child: Container(
                                height: 180,
                                width: 250,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/success.png"),
                                    const Spacing.height(10),
                                    Text(
                                      "Log In Success",
                                      style: Style.body1
                                          .copyWith(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  ),
                  const Spacing.height(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Resend OTP",
                        style: Style.body2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
