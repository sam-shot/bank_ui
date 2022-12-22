import 'package:bank_ui/components/text_style.dart';
import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
   PromoCard({
    required this.body,required this.image,required this.onTap,required this.title,
    super.key,
  });

  String image;
  String title;
  String body;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 10,
            color: Color.fromARGB(19, 0, 0, 0),
            offset: Offset.fromDirection(0, 0))
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Image.asset(
                "assets/images/$image",
                width: 180,
                height: 88,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 85,
                width: 180,
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      title,
                      style: Style.body3.copyWith(color: Colors.black),
                    ),
                    Text(
                      body,
                      textAlign: TextAlign.center,
                      style: Style.body2.copyWith(
                          color: Color.fromARGB(143, 0, 0, 0),
                          fontSize: 12,
                          fontWeight: FontWeight.w100),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
