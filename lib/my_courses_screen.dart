import 'package:course_shop/data/data.dart';
import 'package:course_shop/my_app_texts.dart';
import 'package:course_shop/reusable_widgets/my_app_icon_button.dart';
import 'package:course_shop/reusable_widgets/my_app_vertical_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:course_shop/theme.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Course> myCourses = AppData.myCourses;
    final contextSize = MediaQuery.sizeOf(context);
    final mainPadding = CourseAppTheme.mainPadding;
    final textStyle = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: mainPadding.copyWith(top: 15),
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  _FirstRow(textStyle: textStyle, courses: myCourses),
                  _SecondRow(
                    contextSize: contextSize,
                    textStyle: textStyle,
                    myCourses: myCourses,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SecondRow extends StatelessWidget {
  final List<Course> myCourses;
  const _SecondRow({
    super.key,
    required this.contextSize,
    required this.textStyle,
    required this.myCourses,
  });

  final Size contextSize;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    final getData = GetData(courses: myCourses, textStyle: textStyle);
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: My_App_Vertical_ListView(
        contextSize: contextSize,
        textStyle: textStyle,
        hight: contextSize.height - 160,
        setDividerBetweenItems: true,
        setBorder: true,
        setLeftArrowButton: true,
        row1Children: getData.coursesNames,
        itemImage: getData.coursesPhoto,
        row2Children1: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/blank-profile-picture.png'),
              )),
        ],
        row2Children2: getData.coursesTeacherNames,
        row3Children4: getData.coursesProgress,
        itemsHight: 130,
        itemCount: myCourses.length,
      ),
    );
  }
}

class _FirstRow extends StatelessWidget {
  final List<Course> courses;
  const _FirstRow({
    super.key,
    required this.textStyle,
    required this.courses,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyAppIconButton(
          iconData: CupertinoIcons.search,
          onTap: () {},
          setBorder: true,
        ),
        Column(
          children: [
            Text(
              MyAppTexts.myCourses,
              style: textStyle.titleLarge,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              MyAppTexts.myCoursesNumber + (courses.length).toString(),
              style: textStyle.bodySmall?.copyWith(
                  color: CourseAppTheme.appFifthColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
          ],
        ),
        MyAppIconButton(
          iconData: CupertinoIcons.square_arrow_left,
          onTap: () {},
          setBorder: true,
        )
      ],
    );
  }
}
