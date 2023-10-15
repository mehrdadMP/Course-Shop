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

  final int textFieldCount;
  final List<String> labelTexts;
  final List<IconData> iconsData;

  const MyAppShowDialog({
    super.key,
    required this.textStyle,
    required this.mainPadding,
    required this.dialogLabel,
    required this.textFieldCount,
    required this.labelTexts,
    required this.iconsData,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
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
            _SecondColumn(
              textStyle: textStyle,
              textFieldCount: textFieldCount,
              labelTexts: labelTexts,
              iconsData: iconsData,
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
              'بستن',
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
              'ثبت اطلاعات',
              style: textStyle.labelLarge
                  ?.copyWith(color: CourseAppTheme.appButtonsTextColor),
            ),
            onPressed: () {},
          ),
        )
      ],
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
        children: textFields
        );
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
