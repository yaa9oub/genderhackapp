import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_text.dart';
import 'package:genderhackapp/models/models.dart';
import 'package:genderhackapp/widgets/answer_widget.dart';
import 'package:genderhackapp/widgets/main_widget.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.isTopIcon,
    required this.isReflected,
    this.backgroundColor,
    required this.question,
    required this.subQuestion,
    required this.answersList,
    required this.onLearnMore,
    required this.onSeeMore,
    required this.onAnswerClicked,
  }) : super(key: key);

  final double width;
  final double height;
  final bool isTopIcon;
  final bool isReflected;
  final Color? backgroundColor;
  final String question;
  final String subQuestion;
  final List<Answer> answersList;
  final ValueSetter<int> onLearnMore;
  final ValueSetter<int> onSeeMore;
  final ValueSetter<int> onAnswerClicked;
  @override
  Widget build(BuildContext context) {
    return MainContainerWidget(
      width: width,
      height: height,
      isTopIcon: isTopIcon,
      isReflected: isReflected,
      backgroundColor: backgroundColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //question
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  question,
                  style: AppTextStyles.question,
                ),
                Text(
                  subQuestion,
                  style: AppTextStyles.subQuestion,
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 5.h,
                  );
                },
                padding: EdgeInsets.zero,
                itemCount: answersList.length,
                itemBuilder: (context, index) {
                  var obj = answersList[index];
                  return AnswerWidget(
                    answer: obj.answer,
                    shortDescription: obj.shortDescription,
                    description: obj.description,
                    isClicked: obj.isClicked,
                    isSeeMore: obj.isSeeMore,
                    answerIndex: index,
                    onLearnMoreClicked: () {
                      onLearnMore(index);
                    },
                    onSeeMoreClicked: () {
                      onSeeMore(index);
                    },
                    onAnswerClicked: () => {
                      onAnswerClicked(index),
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
