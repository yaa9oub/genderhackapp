import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_colors.dart';
import 'package:genderhackapp/const/app_text.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.onclick,
    this.color,
  }) : super(key: key);
  final double width;
  final double height;
  final String text;
  final VoidCallback onclick;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? AppColors.orange,
      borderRadius: BorderRadius.circular(5.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(5.r),
        onTap: onclick,
        child: Container(
          width: width.w,
          height: height.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(
              color: AppColors.black,
              width: 2.w,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.question,
            ),
          ),
        ),
      ),
    );
  }
}
