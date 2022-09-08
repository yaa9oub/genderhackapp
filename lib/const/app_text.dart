import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle score = GoogleFonts.notoSansArabic(
    fontSize: 69.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.orange,
  );
  static TextStyle title = GoogleFonts.notoSansArabic(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static TextStyle question = GoogleFonts.notoSansArabic(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static TextStyle subQuestion = GoogleFonts.notoSansArabic(
    fontSize: 15.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.grey,
  );
  static TextStyle answer = GoogleFonts.notoSansArabic(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static TextStyle seemore = GoogleFonts.notoSansArabic(
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.orange,
  );
}
