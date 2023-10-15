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
    final contextSize = MediaQuery.sizeOf(context);
    final mainPadding = CourseAppTheme.mainPadding;
    final textStyle = Theme.of(context).textTheme;
    return Padding(
      padding: mainPadding.copyWith(top: 35),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              _FirstRow(textStyle: textStyle),
              _SecondRow(contextSize: contextSize, textStyle: textStyle)
            ],
          ),
        ),
      ),
    );
  }
}

class _SecondRow extends StatelessWidget {
  const _SecondRow({
    super.key,
    required this.contextSize,
    required this.textStyle,
  });

  final Size contextSize;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: My_App_Vertical_ListView(
        contextSize: contextSize,
        textStyle: textStyle,
        hight: contextSize.height - 160,
        row1Children: [
          Text(
            'نام درس',
            style: textStyle.bodySmall?.copyWith(fontSize: 12),
          )
        ],
        row2Children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset('assets/images/blank-profile-picture.png'),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'نام مدرس',
                  style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
                ),
              ],
            ),
          )
        ],
        row3Children: [
          LinearPercentIndicator(
            lineHeight: 15,
            width: 200,
            backgroundColor: CourseAppTheme.appSecondaryColor,
            progressColor: CourseAppTheme.appFifthColor,
            percent: 0.5,
            barRadius: Radius.circular(5),
            isRTL: true,
          )
        ], itemsHight: 130,
      ),
    );
  }
}

class _FirstRow extends StatelessWidget {
  const _FirstRow({
    super.key,
    required this.textStyle,
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
        ),
        Column(
          children: [
            Text(
              'دروس من',
              style: textStyle.titleLarge,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'تعداد دروس : 0',
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
        )
      ],
    );
  }
}
