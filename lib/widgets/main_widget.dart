import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_colors.dart';

class MainContainerWidget extends StatelessWidget {
  const MainContainerWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.child,
    required this.isTopIcon,
    required this.isReflected,
    this.backgroundColor,
  }) : super(key: key);
  final double width;
  final double height;
  final Widget child;
  final bool isTopIcon;
  final bool isReflected;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                //rotated container
                isReflected
                    ? RotationTransition(
                        turns: const AlwaysStoppedAnimation(357 / 360),
                        child: Container(
                          width: width,
                          height: height - 50.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.r),
                            border: Border.all(
                              color: AppColors.black,
                              width: 2.w,
                            ),
                          ),
                        ),
                      )
                    : Container(),
                Container(
                  width: width,
                  height: height - 50.h,
                  decoration: BoxDecoration(
                    color: backgroundColor ?? Colors.white,
                    borderRadius: BorderRadius.circular(35.r),
                    border: Border.all(
                      color: AppColors.black,
                      width: 2.w,
                    ),
                  ),
                  child: child,
                ),
              ],
            ),
          ),
        ),
        isTopIcon
            ? Positioned(
                left: 10,
                right: 10,
                child: Container(
                  width: 45.w,
                  height: 45.w,
                  decoration: BoxDecoration(
                    color: AppColors.orange,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.black,
                      width: 2.w,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 26.w,
                      height: 26.w,
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.black,
                          width: 2.w,
                        ),
                      ),
                      child: const Icon(Icons.remove),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
