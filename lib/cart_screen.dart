import 'package:course_shop/my_app_texts.dart';
import 'package:course_shop/reusable_widgets/my_app_divider.dart';
import 'package:course_shop/reusable_widgets/my_app_icon_button.dart';
import 'package:course_shop/reusable_widgets/my_app_vertical_listview.dart';
import 'package:course_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final contextSize = MediaQuery.sizeOf(context);
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 0.2)),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 35),
      child: Column(children: [
        _FirstRow(textStyle: textStyle),
        MyAppDivider(mainPadding: EdgeInsets.fromLTRB(10, 7, 10, 7)),
        _SecondRow(contextSize: contextSize, textStyle: textStyle),
        _ThirdRow(contextSize: contextSize, textStyle: textStyle),
      ]),
    );
  }
}

class _ThirdRow extends StatelessWidget {
  const _ThirdRow({
    super.key,
    required this.contextSize,
    required this.textStyle,
  });

  final Size contextSize;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: contextSize.width,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(CourseAppTheme.appButtonsColor),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)))),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(MyAppTexts.pay,
                  style: textStyle.labelLarge
                      ?.copyWith(fontSize: 20, fontWeight: FontWeight.w800)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyAppTexts.amountPrice[0],
                      style: textStyle.labelLarge
                          ?.copyWith(color: CourseAppTheme.appButtonsTextColor),
                    ),
                    Text(
                      MyAppTexts.amountPrice[1],
                      style: textStyle.labelLarge?.copyWith(
                          color: CourseAppTheme.appButtonsTextSecondaryColor,fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              )
            ],
          )),
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
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: My_App_Vertical_ListView(
        contextSize: contextSize,
        textStyle: textStyle,
        hight: contextSize.height - 260,
        itemsHight: 125,
        setDividerBetweenItems: true,
        setBorder: false,
        setLeftArrowButton: false,
        row1Children: [
          Text(
            MyAppTexts.courseName,
            style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
          ),
        ],
        row2Children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child:
                        Image.asset('assets/images/blank-profile-picture.png'),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Text(
                  MyAppTexts.teacherName,
                  style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(MyAppTexts.coursePrice,
                    style: textStyle.bodySmall?.copyWith(
                        color: CourseAppTheme.appFifthColor, fontSize: 15,fontWeight: FontWeight.w800)),
              ],
            ),
          ),
        ],
        row3Children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              MyAppTexts.courseLength,
              style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
            ),
          ),
          Icon(
            CupertinoIcons.circle_fill,
            color: CourseAppTheme.appFifthColor,
            size: 6,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Text(
              MyAppTexts.courseSessionsNumber,
              style: textStyle.bodySmall?.copyWith(fontSize: 11.5),
            ),
          ),
        ],
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyAppIconButton(
            iconData: CupertinoIcons.text_justifyleft,
            onTap: () {},
            setBorder: false,
          ),
          Text(
            MyAppTexts.paymentCart,
            style: textStyle.titleLarge,
          ),
          MyAppIconButton(
            iconData: CupertinoIcons.search,
            onTap: () {},
            setBorder: false,
          )
        ],
      ),
    );
  }
}
