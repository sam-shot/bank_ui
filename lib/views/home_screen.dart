import 'package:bank_ui/components/feature_button.dart';
import 'package:bank_ui/components/promo_card.dart';
import 'package:bank_ui/components/spacing.dart';
import 'package:bank_ui/components/text_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 30, bottom: 10),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello!",
                        style: Style.body1.copyWith(color: Colors.black),
                      ),
                      Text(
                        "Robet Bin Udsin",
                        style: Style.body2.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_active_rounded))
                ],
              ),
              const Spacing.height(20),
              Image.asset("assets/images/poster.png"),
              const Spacing.height(20),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Feature",
                      style: Style.body1.copyWith(color: Colors.black),
                    ),
                    const Spacing.height(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Color(0xFF)
                        FeatureButton(
                            color: const Color.fromARGB(74, 141, 68, 173),
                            icon: "topup.png",
                            label: "Top up",
                            onTap: () {}),
                        FeatureButton(
                            color: const Color.fromARGB(74, 243, 157, 18),
                            icon: "transfer.png",
                            label: "Transfer",
                            onTap: () {}),
                        FeatureButton(
                            color: const Color.fromARGB(74, 46, 204, 112),
                            icon: "internet.png",
                            label: "Internet",
                            onTap: () {}),
                        FeatureButton(
                            color: const Color.fromARGB(74, 231, 77, 60),
                            icon: "wallet.png",
                            label: "Wallet",
                            onTap: () {}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FeatureButton(
                            color: const Color.fromARGB(74, 243, 157, 18),
                            icon: "bills.png",
                            label: "Bills",
                            onTap: () {}),
                        FeatureButton(
                            color: const Color.fromARGB(74, 46, 204, 112),
                            icon: "game.png",
                            label: "Game",
                            onTap: () {}),
                        FeatureButton(
                            color: const Color.fromARGB(74, 231, 77, 60),
                            icon: "mobile.png",
                            label: "Mobile Prepaid",
                            onTap: () {}),
                        FeatureButton(
                            color: const Color.fromARGB(74, 141, 68, 173),
                            icon: "more.png",
                            label: "More",
                            onTap: () {}),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacing.height(20),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Special Promo",
                          style: Style.body1.copyWith(color: Colors.black),
                        ),
                        Text(
                          "View All",
                          style: Style.body2
                              .copyWith(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                    const Spacing.height(10),
                    SingleChildScrollView(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 3),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PromoCard(
                              body:
                                  'Make any payment, at least \$100 and get the cashback',
                              image: "cashback.png",
                              onTap: () {},
                              title: "Bonus Cashback \$40"),
                              const Spacing.width(20),
                          PromoCard(
                              body:
                                  'Make any payment, at least \$599 and get the discount',
                              image: "discount.png",
                              onTap: () {},
                              title: "Bonus Discount 70%"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
