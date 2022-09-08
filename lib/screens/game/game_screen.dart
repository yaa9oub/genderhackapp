import 'package:flutter/material.dart';
import 'package:genderhackapp/routes/app_routes.dart';
import 'package:genderhackapp/screens/game/game_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_assets.dart';
import 'package:genderhackapp/const/app_colors.dart';
import 'package:genderhackapp/const/app_text.dart';
import 'package:genderhackapp/const/globals.dart';
import 'package:genderhackapp/widgets/back_btn.dart';
import 'package:genderhackapp/widgets/bttons.dart';
import 'package:genderhackapp/widgets/question_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:swipe_cards/swipe_cards.dart';

class GamePage extends GetView<GameController> {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GameController>(
      init: GameController(),
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
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      //AppBar
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Bakc button
                          const MyBackButton(),
                          Container(
                            width: 190.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              color: AppColors.orange,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                color: AppColors.black,
                                width: 2.w,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 7.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "نقطة",
                                      style: AppTextStyles.subQuestion.copyWith(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      score.toString(),
                                      style: AppTextStyles.question.copyWith(
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  ": المستوى الجنسي",
                                  style: AppTextStyles.subQuestion.copyWith(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "قداش مزال و تجيك",
                          style: AppTextStyles.answer
                              .copyWith(color: AppColors.orange),
                        ),
                      ),
                      //Linear progress bar
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(
                            color: AppColors.black,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: LinearPercentIndicator(
                            padding: EdgeInsets.zero,
                            width: 331.5.w,
                            lineHeight: 14.0,
                            isRTL: true,
                            backgroundColor:
                                const Color.fromARGB(255, 214, 214, 214),
                            progressColor: AppColors.orange,
                            barRadius: Radius.circular(20.r),
                            percent: currentQuestion / questionsList.length,
                            animateFromLastPercent: true,
                            animation: true,
                            alignment: MainAxisAlignment.center,
                            widgetIndicator: Container(
                              width: 24.w,
                              height: 24.w,
                              decoration: BoxDecoration(
                                color: AppColors.orange,
                                border: Border.all(
                                  color: AppColors.black,
                                  width: 2.w,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      //Quizzzz
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: SwipeCards(
                            matchEngine: controller.matchEngine!,
                            itemChanged: (SwipeItem item, int index) {},
                            upSwipeAllowed: false,
                            fillSpace: false,
                            onStackFinished: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: AppColors.green,
                                    title: Text(
                                      "صحة كسوح",
                                      style: AppTextStyles.question,
                                      textAlign: TextAlign.center,
                                    ),
                                    content: Column(
                                      children: [
                                        const Divider(),
                                        Text(
                                          score.toString(),
                                          style: AppTextStyles.score,
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "سكورك",
                                          style: AppTextStyles.question,
                                          textAlign: TextAlign.center,
                                        ),
                                        const Divider(),
                                        Text(
                                          "عندك ماعون الخدمة ؟",
                                          style: AppTextStyles.question,
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "كان تسحق ماعون كيف الواقي الذكري و لا المزلق الحميمي ولا حبوب منع الحمل تنجم تتصل بينا ولا تلتجئ لأقرب نقطة بيع",
                                          style: AppTextStyles.subQuestion,
                                          textAlign: TextAlign.right,
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
                                        PrimaryButton(
                                          width: double.infinity,
                                          height: 40.h,
                                          text: "نحب نشري",
                                          onclick: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                contentPadding:
                                                    EdgeInsets.all(5.h),
                                                backgroundColor:
                                                    AppColors.green,
                                                content: Container(
                                                  height: 300.h,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "محصّن توفرلك صندوق و يوصلك للدار بنزلة وحدة",
                                                        style: AppTextStyles
                                                            .subQuestion
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: AppColors
                                                                    .primary),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      Text(
                                                        "أما مازالت ما تخدمش.. أرجع غدوة",
                                                        style: AppTextStyles
                                                            .subQuestion
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: AppColors
                                                                    .primary),
                                                        textAlign:
                                                            TextAlign.center,
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
                                                        color: AppColors.green,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          color: AppColors.green,
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
                                                contentPadding:
                                                    EdgeInsets.all(5.h),
                                                backgroundColor:
                                                    AppColors.green,
                                                content: Container(
                                                  height: 460.h,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                        color: AppColors.green,
                                                      ),
                                                      SizedBox(
                                                        height: 5.h,
                                                      ),
                                                      PrimaryButton(
                                                        width: double.infinity,
                                                        height: 40.h,
                                                        text: "مريقل",
                                                        onclick: () {
                                                          Get.toNamed(
                                                              AppRoutes.home);
                                                        },
                                                        color: AppColors.green,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          color: AppColors.green,
                                        ),
                                        const Divider(),
                                        PrimaryButton(
                                          width: double.infinity,
                                          height: 40.h,
                                          text: "لا كون متهني",
                                          onclick: () {
                                            Get.toNamed(AppRoutes.home);
                                          },
                                          color: AppColors.green,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Draggable(
                                feedback: Container(),
                                child: QuestionWidget(
                                  width: 300.w,
                                  height: 450.w,
                                  isTopIcon: false,
                                  isReflected: true,
                                  //backgroundColor: AppColors.lightOrange,
                                  question: questionsList[index].title,
                                  subQuestion: questionsList[index].subtitle,
                                  answersList: questionsList[index].answers,
                                  onLearnMore: (answerQuestion) {},
                                  onSeeMore: (answerQuestion) {
                                    seeMore(index, answerQuestion);
                                    controller.update();
                                  },
                                  onAnswerClicked: (answerQuestion) {
                                    answerClicked(index, answerQuestion);
                                    controller.update();
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(
                        thickness: 1.w,
                      ),
                      //Button
                      PrimaryButton(
                        width: 320.w,
                        height: 50.h,
                        text: "إلي بعدو",
                        onclick: () {
                          if (isAnswered(currentQuestion)) {
                            controller.matchEngine!.currentItem?.like();
                            currentQuestion++;
                            score += random();
                            controller.update();
                          } else {
                            Get.snackbar(
                              "خطأ",
                              "اختر إجابة",
                              snackPosition: SnackPosition.TOP,
                              backgroundColor: AppColors.red,
                              colorText: AppColors.primary,
                              margin: EdgeInsets.symmetric(
                                horizontal: 20.w,
                                vertical: 20.h,
                              ),
                              borderRadius: 10.r,
                              animationDuration:
                                  const Duration(milliseconds: 500),
                              forwardAnimationCurve: Curves.easeOutBack,
                              reverseAnimationCurve: Curves.easeInBack,
                            );
                          }
                        },
                      ),
                      SizedBox(
                        height: 10.h,
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
