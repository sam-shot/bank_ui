import 'package:bank_ui/components/spacing.dart';
import 'package:bank_ui/components/text_style.dart';
import 'package:flutter/material.dart';

class FeatureButton extends StatelessWidget {
  FeatureButton({
    required this.color,
    required this.icon,
    required this.label,
    required this.onTap,
    super.key,
  });

  Color color;
  String label;
  String icon;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      height: 121,
      child: Column(
        children: [
          Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                  radius: 10,
                  onTap: onTap,
                  child: Image.asset("assets/images/$icon"))),
          const Spacing.height(5),
          Text(
            label,
            textAlign: TextAlign.center,
            style: Style.body2.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}
