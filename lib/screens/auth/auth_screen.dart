import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_assets.dart';
import 'package:genderhackapp/const/app_colors.dart';
import 'package:genderhackapp/const/app_text.dart';
import 'package:genderhackapp/const/globals.dart';
import 'package:genderhackapp/routes/app_routes.dart';
import 'package:genderhackapp/screens/auth/auth_controller.dart';
import 'package:genderhackapp/widgets/bttons.dart';
import 'package:genderhackapp/widgets/main_widget.dart';
import 'package:get/get.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
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
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        MainContainerWidget(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height - 150,
                          isTopIcon: true,
                          isReflected: true,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "مرحبا بيك في محصّن",
                                style: AppTextStyles.title,
                              ),
                              const Divider(),
                              SizedBox(
                                width: 240.w,
                                child: Text(
                                  "غايتنا من التطبيق هذا تعليم الشباب و الشابات عن الجنسيات و الاعراض و الوقاية",
                                  style: AppTextStyles.subQuestion.copyWith(
                                    color: AppColors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: 240.w,
                                child: Text(
                                  "التطبيق مازال في مرحلة التطوير و الاختبارات",
                                  style: AppTextStyles.seemore.copyWith(
                                    color: AppColors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const Divider(),
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.w),
                                  child: Form(
                                    key: controller.formKey,
                                    child: ListView(
                                      children: [
                                        AppTextField(
                                          hint: "الإسم المستعار",
                                          label: "باش تحب ناديولك؟",
                                          ctrl: controller.nameCtrl,
                                        ),
                                        AppTextField(
                                          hint: "ما لازمكش تكون أقل من 16 سنة",
                                          label: "قداه عمرك؟",
                                          ctrl: controller.ageCtrl,
                                        ),
                                        //sexe
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Text(
                                              "الجنس؟",
                                              style: AppTextStyles.subQuestion
                                                  .copyWith(
                                                color: AppColors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: AppColors.black
                                                      .withOpacity(0.25),
                                                  width: 1.w,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10.r),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "ذكر",
                                                        style: AppTextStyles
                                                            .subQuestion
                                                            .copyWith(
                                                          color:
                                                              AppColors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      Radio<Sexe>(
                                                        value: Sexe.H,
                                                        activeColor:
                                                            AppColors.orange,
                                                        groupValue:
                                                            controller.sexe,
                                                        onChanged: (value) {
                                                          controller.sexe =
                                                              value!;
                                                          controller.update();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 50.w,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "أُنثى",
                                                        style: AppTextStyles
                                                            .subQuestion
                                                            .copyWith(
                                                          color:
                                                              AppColors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      Radio<Sexe>(
                                                        value: Sexe.F,
                                                        activeColor:
                                                            AppColors.orange,
                                                        groupValue:
                                                            controller.sexe,
                                                        onChanged: (value) {
                                                          controller.sexe =
                                                              value!;
                                                          controller.update();
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        //orientation
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Text(
                                              "ميولاتك الجنسية؟",
                                              style: AppTextStyles.subQuestion
                                                  .copyWith(
                                                color: AppColors.black,
                                                fontWeight: FontWeight.w600,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: AppColors.black
                                                      .withOpacity(0.25),
                                                  width: 1.w,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10.r),
                                                ),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w),
                                              child: Column(
                                                children: [
                                                  OrientationWidget(
                                                    title: "متباين الجنس",
                                                    subtitle:
                                                        "تنجذب للجنس الأخر",
                                                    groupValue:
                                                        controller.orientation,
                                                    value: Orientations.Hetero,
                                                    onChanged: () {
                                                      controller.orientation =
                                                          Orientations.Hetero;
                                                      controller.update();
                                                    },
                                                  ),
                                                  OrientationWidget(
                                                    title: "مثلي الجنس",
                                                    subtitle:
                                                        "تنجذب لنفس الجنس",
                                                    groupValue:
                                                        controller.orientation,
                                                    value: Orientations.Homo,
                                                    onChanged: () {
                                                      controller.orientation =
                                                          Orientations.Homo;
                                                      controller.update();
                                                    },
                                                  ),
                                                  OrientationWidget(
                                                    title: "ثنائي الجنس",
                                                    subtitle: "تنجذب للجنسين",
                                                    groupValue:
                                                        controller.orientation,
                                                    value: Orientations.Bi,
                                                    onChanged: () {
                                                      controller.orientation =
                                                          Orientations.Bi;
                                                      controller.update();
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1.w,
                        ),
                        //Button
                        PrimaryButton(
                          width: 320.w,
                          height: 50.h,
                          text: "توكّل",
                          onclick: () {
                            Get.toNamed(AppRoutes.home);
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
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

class OrientationWidget extends StatelessWidget {
  const OrientationWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.groupValue,
    this.value,
    required this.onChanged,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final groupValue;
  final value;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: AppTextStyles.subQuestion.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Radio<Orientations>(
              value: value,
              activeColor: AppColors.orange,
              groupValue: groupValue,
              onChanged: (value) {
                onChanged();
              },
            ),
          ],
        ),
        Text(
          subtitle,
          style: AppTextStyles.subQuestion.copyWith(
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.end,
        ),
        const Divider(),
      ],
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.hint,
    required this.label,
    required this.ctrl,
  }) : super(key: key);
  final String hint;
  final String label;
  final TextEditingController ctrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          label,
          style: AppTextStyles.subQuestion.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5.h,
        ),
        //name
        TextField(
          textAlign: TextAlign.end,
          controller: ctrl,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppTextStyles.subQuestion,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColors.black,
                width: 2.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
