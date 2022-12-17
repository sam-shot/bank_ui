import 'package:bank_ui/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  Style._();

  static TextStyle h1 = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColor.mainColor[200]
  );
  static TextStyle h2 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColor.mainColor[200]
  );
  static TextStyle h3 = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w600
  );
}
