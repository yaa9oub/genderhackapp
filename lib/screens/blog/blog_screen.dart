import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:genderhackapp/const/app_assets.dart';
import 'package:genderhackapp/const/app_text.dart';
import 'package:genderhackapp/screens/blog/blog_controller.dart';
import 'package:genderhackapp/widgets/bttons.dart';
import 'package:get/get.dart';

class BlogPage extends GetView<BlogController> {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    //AppBar
                    BlogItem(
                      controller: controller,
                      title: "بودكاست يحكي على الصحة الجنسية و الإنجابية",
                      description:
                          "بودكاست جديد 100 بالـ100 تونسي و بلغة مفهومة",
                      link: "https://www.instagram.com/reel/CiOl481qRu3/",
                      imagelink:
                          "https://cdn-icons-png.flaticon.com/512/3919/3919824.png",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    BlogItem(
                      controller: controller,
                      title: "الآلة الرحمية",
                      description:
                          "طريقة لمنع الحمل على المدى الطويل تركبها المرأة في الرحم متعها عند الطبيب والا القابلة وتنساها يا حي تتفقدها خمسة سنين اخرين وفيها زوز انواع نحاسي و هرموني وتنجم تنحيها في اي وقت اما هذي زادا ما تحميكش مالتعفنات المنقولة جنسيا",
                      link: "https://www.jensaneya.org",
                      imagelink:
                          "https://images.unsplash.com/photo-1576073978959-4e311df65d60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=773&q=80",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    BlogItem(
                      controller: controller,
                      title: "حبوب منع الحمل",
                      description:
                          "إسمها فيها، هي حرابش تاخوها المرأة من الفرماسي بعد ما تستشير طبيبها و تعرف أحسن نوع يساعد بدنها. تستعملها بصفة دورية باش تمنع الحمل. أما رد بالك راهي ما تحميكش من التعفنات الجنسية.",
                      link: "https://www.jensaneya.org",
                      imagelink:
                          "https://img.freepik.com/photos-gratuite/pilules-fond-rose-plat-poser-sante-femmes_169016-19219.jpg?w=996&t=st=1662608082~exp=1662608682~hmac=a38086f6f525d8e138196f854d6f8b1bdede4c3daea03e138405c90ec3c001ef",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    BlogItem(
                      controller: controller,
                      title: "الواقي الذكري",
                      description:
                          "يجي بالاحجام والاذواق الكل يتلبس في القضيب  وتستعملو مرة وطيش ويحميك مالتعفنات المنقولة جنسيا بخلاف انو يمنع الحمل وتنجم تشريه من اقرب فارماسي والا مغازة",
                      link: "https://www.jensaneya.org",
                      imagelink:
                          "https://img.freepik.com/photos-gratuite/mains-tenant-preservatif-non-emballe-fond-jaune_23-2148259688.jpg?w=826&t=st=1662608165~exp=1662608765~hmac=33314c211fd08566ebae26912456be5b9b364abd0cec9c68a6316ab8aaf6db39",
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PrimaryButton(
                      width: double.infinity,
                      height: 40.h,
                      text: "أكثر",
                      onclick: () {},
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
  }
}

class BlogItem extends StatelessWidget {
  const BlogItem({
    Key? key,
    required this.controller,
    required this.link,
    required this.title,
    required this.description,
    required this.imagelink,
  }) : super(key: key);

  final BlogController controller;
  final String link;
  final String imagelink;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      padding: EdgeInsets.all(10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: AppTextStyles.question,
            textAlign: TextAlign.end,
          ),
          const Divider(),
          Expanded(
            child: Text(
              description,
              style: AppTextStyles.answer,
              textAlign: TextAlign.end,
            ),
          ),
          const Divider(),
          Center(
            child: Image.network(
              imagelink,
              height: 80.h,
              width: 80.h,
            ),
          ),
          const Divider(),
          Align(
            alignment: Alignment.center,
            child: PrimaryButton(
              width: 230.w,
              height: 40.h,
              text: "زيد تثقف",
              onclick: () {
                controller.goto(link);
              },
            ),
          ),
        ],
      ),
    );
  }
}
