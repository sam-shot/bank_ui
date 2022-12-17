import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double height;
  final double width;

  const Spacing.height(this.height, {super.key}) : width = 0;
  const Spacing.width(this.width, {super.key}) : height = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
