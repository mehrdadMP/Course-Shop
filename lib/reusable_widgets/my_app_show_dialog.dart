import 'dart:ui';

import 'package:course_shop/my_app_texts.dart';
import 'package:course_shop/reusable_widgets/my_app_divider.dart';
import 'package:course_shop/reusable_widgets/my_app_textfield.dart';
import 'package:course_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

class MyAppShowDialog extends StatelessWidget {
  final TextTheme textStyle;
  final EdgeInsets mainPadding;
  final String dialogLabel;

  final int? textFieldCount;
  final List<String>? labelTexts;
  final List<IconData>? iconsData;

  const MyAppShowDialog({
    super.key,
    required this.textStyle,
    required this.mainPadding,
    required this.dialogLabel,
    this.textFieldCount,
    this.labelTexts,
    this.iconsData,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: CupertinoAlertDialog(
        insetAnimationDuration: Duration(seconds: 1),
        content: Card(
          color: Colors.transparent,
          elevation: 0.0,
          child: Column(
            children: [
              _FirstColumn(
                dialogLabel: dialogLabel,
                textStyle: textStyle,
                mainPadding: mainPadding,
              ),
              SizedBox(
                height: 10,
              ),
              _SecondColumn(
                textStyle: textStyle,
                textFieldCount: textFieldCount == null ? 0 : textFieldCount!,
                labelTexts: labelTexts == null ? [] : labelTexts!,
                iconsData: iconsData == null ? [] : iconsData!,
              )
            ],
          ),
        ),
        actions: <Widget>[
          Container(
            height: 50,
            decoration: BoxDecoration(color: CourseAppTheme.appButtonsColor),
            child: BasicDialogAction(
              title: Text(
                MyAppTexts.closeWindow,
                style: textStyle.labelLarge
                    ?.copyWith(color: CourseAppTheme.appButtonsTextColor),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: CourseAppTheme.appButtonsColor),
            height: 50,
            child: BasicDialogAction(
              title: Text(
                MyAppTexts.saveInfo,
                style: textStyle.labelLarge
                    ?.copyWith(color: CourseAppTheme.appButtonsTextColor),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class _SecondColumn extends StatelessWidget {
  final int textFieldCount;
  final List<String> labelTexts;
  final List<IconData> iconsData;
  const _SecondColumn({
    super.key,
    required this.textStyle,
    required this.textFieldCount,
    required this.labelTexts,
    required this.iconsData,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    List<Widget> textFields = List.generate(
        textFieldCount,
        ((index) => Padding(
              padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
              child: MyAppTextField(
                textStyle: textStyle,
                labelText: labelTexts[index],
                iconData: iconsData[index],
              ),
            )));
    return Column(
        children: textFieldCount != 0
            ? textFields
            : [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        child: ClipRRect(borderRadius: BorderRadius.circular(8),
                          child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: CourseAppTheme.appPrimaryColor,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/bank-images/behpardakht-mellat.jpg"),
                                    fit: BoxFit.cover),
                                // button text
                              ),
                              child: Text('')),
                        ),
                        onTap: () {}),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        child: ClipRRect(borderRadius: BorderRadius.circular(8),
                          child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: CourseAppTheme.appPrimaryColor,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/bank-images/sadad-meli.png"),
                                    fit: BoxFit.cover),
                                // button text
                              ),
                              child: Text('')),
                        ),
                        onTap: () {})
                  ],
                )
              ]);
  }
}

class _FirstColumn extends StatelessWidget {
  const _FirstColumn({
    super.key,
    required this.dialogLabel,
    required this.textStyle,
    required this.mainPadding,
  });

  final String dialogLabel;
  final TextTheme textStyle;
  final EdgeInsets mainPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(6, 6, 6, 0),
          child: Text(
            dialogLabel,
            style: textStyle.headlineSmall?.copyWith(fontSize: 18),
          ),
        ),
        MyAppDivider(mainPadding: mainPadding.copyWith(left: 7, right: 7)),
      ],
    );
  }
}
