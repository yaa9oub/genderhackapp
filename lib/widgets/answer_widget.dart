import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_colors.dart';
import 'package:genderhackapp/const/app_text.dart';
import 'package:genderhackapp/widgets/seemore_btn.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    Key? key,
    required this.answer,
    required this.isClicked,
    required this.isSeeMore,
    required this.onSeeMoreClicked,
    required this.onLearnMoreClicked,
    required this.description,
    required this.shortDescription,
    required this.onAnswerClicked,
    required this.answerIndex,
  }) : super(key: key);
  final String answer;
  final String description;
  final String shortDescription;
  final bool isClicked;
  final bool isSeeMore;
  final VoidCallback onSeeMoreClicked;
  final VoidCallback onLearnMoreClicked;
  final VoidCallback onAnswerClicked;
  final int answerIndex;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onAnswerClicked,
      child: Container(
        width: double.infinity,
        height: isSeeMore ? 150.h : 51.h,
        decoration: BoxDecoration(
          color: isClicked ? AppColors.green : Colors.transparent,
          border: Border.all(color: AppColors.black, width: 1.5.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SeeMoreButton(
                    onclick: onSeeMoreClicked,
                    title: "زيد تعلم",
                  ),
                  Row(
                    children: [
                      Text(
                        answer,
                        style: AppTextStyles.answer,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 27.w,
                        height: 27.w,
                        decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(10.r),
                          border:
                              Border.all(color: AppColors.black, width: 1.5.w),
                        ),
                        child: Center(
                          child: Text(
                            answerIndex.toString(),
                            style: AppTextStyles.answer,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Visibility(
                visible: isSeeMore,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          shortDescription,
                          textAlign: TextAlign.end,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SeeMoreButton(
                        onclick: onLearnMoreClicked,
                        title: "زيد أقرى",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
