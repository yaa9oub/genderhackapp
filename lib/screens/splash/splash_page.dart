import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_assets.dart';
import 'package:genderhackapp/const/app_colors.dart';
import 'package:genderhackapp/screens/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      initState: (_) {},
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                //bg
                Opacity(
                  opacity: 0.05,
                  child: Image.asset(
                    Assets.bg,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: AppColors.orange.withOpacity(0.2),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200.w,
                          height: 200.h,
                          child: Image.asset(
                            Assets.logo,
                            width: 200.w,
                          ),
                        ),
                        SizedBox(
                          height: 320.h,
                        ),
                        CircularProgressIndicator(
                          color: AppColors.orange,
                          backgroundColor: AppColors.grey.withOpacity(0.5),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
