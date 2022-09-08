import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_colors.dart';
import 'package:get/get.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: AppColors.orange,
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.black,
            width: 2.w,
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
