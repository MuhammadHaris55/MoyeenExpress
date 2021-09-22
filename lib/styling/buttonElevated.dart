import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final ButtonStyle buttonDesign = ElevatedButton.styleFrom(
  padding: EdgeInsets.zero,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

Container button_design(int width, String text) {
  return Container(
    height: 58,
    width: width.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      color: Colors.orange,
    ),
    child: Center(
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
        ),
      ),
    ),
  );
}