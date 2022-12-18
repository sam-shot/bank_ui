import 'package:bank_ui/components/text_style.dart';
import 'package:bank_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.ontap,
    this.style,
    this.color,
  }) : super(key: key);
  double height;
  double width;
  Color? color;
  String text;
  TextStyle? style;
  void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: height,
          width: width,
          color: color ??= AppColor.mainColor,
          child: Center(
            child: Text(
              text,
              style: style ??= Style.body1.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
