import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moyeen_express/styling/appColors.dart';

Text midText(String text, double size) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: size.sp,
      color: textColor,
    ),
  );
}
