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
        _ForthRow(contextSize: contextSize, textStyle: textStyle),
      ]),
    );
  }
}

class _ForthRow extends StatelessWidget {
  const _ForthRow({
    super.key,
    required this.contextSize,
    required this.textStyle,
  });

  final Size contextSize;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: contextSize.width,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(CourseAppTheme.appButtonsColor),
              shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)))),
          onPressed: () {},
          child: Text(MyAppTexts.pay, style: textStyle.labelMedium)),
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
          row1Children: [],
          row2Children: [],
          row3Children: [],
          hight: contextSize.height - 250,
          itemsHight: 100),
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
              iconData: CupertinoIcons.text_justifyleft, onTap: () {}),
          Text(
            MyAppTexts.paymentCart,
            style: textStyle.titleLarge,
          ),
          MyAppIconButton(iconData: CupertinoIcons.search, onTap: () {})
        ],
      ),
    );
  }
}
