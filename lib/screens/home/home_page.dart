import 'package:flutter/material.dart';
import 'package:genderhackapp/routes/app_routes.dart';
import 'package:genderhackapp/screens/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_assets.dart';
import 'package:genderhackapp/const/app_colors.dart';
import 'package:genderhackapp/const/app_text.dart';
import 'package:genderhackapp/widgets/bttons.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
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
                  //color: AppColors.green,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("مرحبا بيك", style: AppTextStyles.title),
                      SizedBox(height: 20.h),
                      InkWell(
                        onTap: () {
                          Get.offNamed(AppRoutes.game);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: AppColors.orange.withOpacity(0.5),
                            border: Border.all(
                              color: AppColors.orange,
                              width: 2.w,
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.arrow_back,
                                color: AppColors.black,
                              ),
                              Text(
                                "نعملوا حاجة؟",
                                style: AppTextStyles.question,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.blog);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: AppColors.green.withOpacity(0.8),
                            border: Border.all(
                              color: AppColors.green,
                              width: 2.w,
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.arrow_back,
                                color: AppColors.black,
                              ),
                              Text(
                                "نتعلموا حاجة؟",
                                style: AppTextStyles.question,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: AppColors.red,
                              content: Container(
                                width: double.infinity,
                                height: 500.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60.r),
                                ),
                                padding: EdgeInsets.all(5.r),
                                child: Column(
                                  children: [
                                    Text(
                                      " محصّن توفرلك صندوق و يوصلك للدار بنزلة وحدة ",
                                      style: AppTextStyles.subQuestion.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.primary),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "  و توريك زادة منين تنجم تشري الي حاجتك بيه",
                                      style: AppTextStyles.subQuestion.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.primary),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Divider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: 70.w,
                                          height: 70.h,
                                          decoration: BoxDecoration(
                                            color: AppColors.primary,
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                          child: Center(
                                            child: Image.network(
                                              "https://cdn-icons-png.flaticon.com/512/6852/6852795.png",
                                              width: 50.w,
                                              height: 50.w,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 70.w,
                                          height: 70.h,
                                          decoration: BoxDecoration(
                                            color: AppColors.primary,
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                          child: Center(
                                            child: Image.network(
                                              "https://cdn-icons-png.flaticon.com/512/6425/6425333.png",
                                              width: 50.w,
                                              height: 50.w,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 70.w,
                                          height: 70.h,
                                          decoration: BoxDecoration(
                                            color: AppColors.primary,
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                          child: Center(
                                            child: Image.network(
                                              "https://cdn-icons-png.flaticon.com/512/2827/2827798.png",
                                              width: 50.w,
                                              height: 50.w,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Divider(),
                                    Text(
                                      " الحاحات هاذي مهمة و مانش عارفين قيمتها ",
                                      style: AppTextStyles.subQuestion.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.primary),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Divider(),
                                    Text(
                                      "  هاذي الحاحات اللي بتحميك من الفيروسات و العدوى متع التعفنات الجنسية",
                                      style: AppTextStyles.subQuestion.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.primary),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Divider(),
                                    PrimaryButton(
                                      width: double.infinity,
                                      height: 40.h,
                                      text: "نحب نزيد نفهم",
                                      onclick: () {},
                                      color: AppColors.red,
                                    ),
                                    const Divider(),
                                    PrimaryButton(
                                      width: double.infinity,
                                      height: 40.h,
                                      text: "نحب نشري",
                                      onclick: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            contentPadding: EdgeInsets.all(5.h),
                                            backgroundColor: AppColors.red,
                                            content: Container(
                                              height: 300.h,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "محصّن توفرلك صندوق و يوصلك للدار بنزلة وحدة",
                                                    style: AppTextStyles
                                                        .subQuestion
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: AppColors
                                                                .primary),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  Text(
                                                    "أما مازالت ما تخدمش.. أرجع غدوة",
                                                    style: AppTextStyles
                                                        .subQuestion
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: AppColors
                                                                .primary),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    height: 25.h,
                                                  ),
                                                  PrimaryButton(
                                                    width: double.infinity,
                                                    height: 40.h,
                                                    text: "مريقل",
                                                    onclick: () {
                                                      Get.back();
                                                    },
                                                    color: AppColors.red,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      color: AppColors.red,
                                    ),
                                    const Divider(),
                                    PrimaryButton(
                                      width: double.infinity,
                                      height: 40.h,
                                      text: "منين نشري؟",
                                      onclick: () {
                                        //controller.openMap();
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            contentPadding: EdgeInsets.all(5.h),
                                            backgroundColor: AppColors.red,
                                            content: Container(
                                              height: 460.h,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    Assets.map,
                                                    width: 300.w,
                                                    height: 300.h,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  PrimaryButton(
                                                    width: double.infinity,
                                                    height: 40.h,
                                                    text: "هزني",
                                                    onclick: () {
                                                      controller.openMap();
                                                    },
                                                    color: AppColors.red,
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  PrimaryButton(
                                                    width: double.infinity,
                                                    height: 40.h,
                                                    text: "مريقل",
                                                    onclick: () {
                                                      Get.back();
                                                    },
                                                    color: AppColors.red,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      color: AppColors.red,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: AppColors.red.withOpacity(0.5),
                            border: Border.all(
                              color: AppColors.red,
                              width: 2.w,
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.arrow_back,
                                color: AppColors.black,
                              ),
                              Text(
                                "نشريو حاجة؟",
                                style: AppTextStyles.question,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          controller.follow();
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60.h,
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            border: Border.all(
                              color: const Color.fromARGB(255, 183, 225, 255),
                              width: 2.w,
                            ),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.arrow_back,
                                color: AppColors.black,
                              ),
                              Text(
                                "تبعنا على الانستغرام",
                                style: AppTextStyles.question,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
