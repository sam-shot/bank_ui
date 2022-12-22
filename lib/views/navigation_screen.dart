// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:bank_ui/components/text_style.dart';
import 'package:bank_ui/constants/colors.dart';
import 'package:bank_ui/views/home_screen.dart';
import 'package:bank_ui/views/profile_screen.dart';
import 'package:bank_ui/views/scan_to_pay.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int index = 0;
  final _screens = [
    const HomeScreen(),
    const ScanToPay(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.white,
          
          labelTextStyle: MaterialStateProperty.all(
            Style.body2
          )
        ),
        child: NavigationBar(
          animationDuration: Duration(seconds: 2),
          backgroundColor: Colors.white,
          elevation: 10,
          height: 75,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: index,
          onDestinationSelected: (index) {
            setState(() {
              this.index = index;
            });
          },
          destinations: [
            const NavigationDestination(
              icon: Icon(Icons.home_outlined,color: Color.fromARGB(122, 38, 196, 104),),
              label: "Home",
              selectedIcon: Icon(
                Icons.home_filled,
                color: AppColor.mainColor,
                size: 28,
              ),
            ),
            const NavigationDestination(
              icon: Icon(Icons.qr_code_scanner_rounded,color: Color.fromARGB(122, 38, 196, 104)),
              label: "Scan",
              selectedIcon: Icon(
                Icons.qr_code_scanner_rounded,
                color: AppColor.mainColor,
                size: 28,
              ),
            ),
            const NavigationDestination(
              icon: Icon(Icons.person_outline_rounded,color: Color.fromARGB(122, 38, 196, 104),),
              label: "Profile",
              selectedIcon: Icon(
                Icons.person_rounded,
                color: AppColor.mainColor,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
