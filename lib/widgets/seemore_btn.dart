import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_text.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({
    Key? key,
    required this.onclick,
    required this.title,
  }) : super(key: key);
  final VoidCallback onclick;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 5.0.h),
        child: Text(
          title,
          style: AppTextStyles.seemore,
        ),
      ),
    );
  }
}
