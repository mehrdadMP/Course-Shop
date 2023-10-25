import 'package:course_shop/my_app_texts.dart';
import 'package:course_shop/reusable_widgets/my_app_bouncing_scroll_physics.dart';
import 'package:course_shop/reusable_widgets/my_app_divider.dart';
import 'package:course_shop/reusable_widgets/my_app_toggle_switch.dart';
import 'package:course_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final contextSize = MediaQuery.sizeOf(context);
    final _settingsPadding = const EdgeInsets.fromLTRB(20, 7, 20, 7);
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: CourseAppTheme.appBackGroundColor),
          child: Column(children: [
            _FirstRow(textStyle: textStyle),
            SingleChildScrollView(
              physics: MyAppBouncingScrollPhysics(),
              child: Column(
                children: [
                  _SecondRow(
                      contextSize: contextSize,
                      textStyle: textStyle,
                      settingsPadding: _settingsPadding),
                  _ThirdRow(
                      contextSize: contextSize,
                      textStyle: textStyle,
                      settingsPadding: _settingsPadding)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class _ThirdRow extends StatelessWidget {
  const _ThirdRow({
    super.key,
    required this.contextSize,
    required this.textStyle,
    required EdgeInsets settingsPadding,
  }) : _settingsPadding = settingsPadding;

  final Size contextSize;
  final TextTheme textStyle;
  final EdgeInsets _settingsPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            left: 8,
            top: 8,
            right: 8,
            bottom: 8,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 0.001,
                    blurStyle: BlurStyle.normal,
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: contextSize.width - 30,
            decoration: BoxDecoration(
              color: CourseAppTheme.appForthColor,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Column(children: [
              _profileSettings(
                  settingsPadding: _settingsPadding, textStyle: textStyle),
              MyAppDivider(mainPadding: CourseAppTheme.mainPadding),
              _advancedSettings(
                  settingsPadding: _settingsPadding, textStyle: textStyle),
              MyAppDivider(mainPadding: CourseAppTheme.mainPadding),
              _changeTheme(
                  settingsPadding: _settingsPadding, textStyle: textStyle),
              MyAppDivider(mainPadding: CourseAppTheme.mainPadding),
              _Exit(settingsPadding: _settingsPadding, textStyle: textStyle),
              SizedBox(
                height: 7,
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class _changeTheme extends StatelessWidget {
  const _changeTheme({
    super.key,
    required EdgeInsets settingsPadding,
    required this.textStyle,
  }) : _settingsPadding = settingsPadding;

  final EdgeInsets _settingsPadding;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _settingsPadding.copyWith(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                CupertinoIcons.hand_draw,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                MyAppTexts.changeTheme,
                style: textStyle.bodyMedium,
              ),
            ],
          ),
          Icon(CupertinoIcons.chevron_left)
        ],
      ),
    );
  }
}

class _Exit extends StatelessWidget {
  const _Exit({
    super.key,
    required EdgeInsets settingsPadding,
    required this.textStyle,
  }) : _settingsPadding = settingsPadding;

  final EdgeInsets _settingsPadding;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _settingsPadding.copyWith(top: 15, right: 18),
      child: Row(children: [
        Image.asset(
          'assets/icons/logout.png',
          width: 30,
          height: 30,
        ),
        SizedBox(
          width: 5,
        ),
        Text(MyAppTexts.exit, style: textStyle.bodyMedium),
      ]),
    );
  }
}

class _advancedSettings extends StatelessWidget {
  const _advancedSettings({
    super.key,
    required EdgeInsets settingsPadding,
    required this.textStyle,
  }) : _settingsPadding = settingsPadding;

  final EdgeInsets _settingsPadding;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _settingsPadding.copyWith(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                CupertinoIcons.settings,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                MyAppTexts.advancedSettings,
                style: textStyle.bodyMedium,
              ),
            ],
          ),
          Icon(CupertinoIcons.chevron_left)
        ],
      ),
    );
  }
}

class _profileSettings extends StatelessWidget {
  const _profileSettings({
    super.key,
    required EdgeInsets settingsPadding,
    required this.textStyle,
  }) : _settingsPadding = settingsPadding;

  final EdgeInsets _settingsPadding;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _settingsPadding.copyWith(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                CupertinoIcons.profile_circled,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                MyAppTexts.profileSettings,
                style: textStyle.bodyMedium,
              ),
            ],
          ),
          Icon(CupertinoIcons.chevron_left)
        ],
      ),
    );
  }
}

class _SecondRow extends StatelessWidget {
  const _SecondRow({
    super.key,
    required this.contextSize,
    required this.textStyle,
    required EdgeInsets settingsPadding,
  }) : _settingsPadding = settingsPadding;

  final Size contextSize;
  final TextTheme textStyle;
  final EdgeInsets _settingsPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            left: 8,
            top: 8,
            right: 8,
            bottom: 8,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 0.001,
                    blurStyle: BlurStyle.normal,
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: contextSize.width - 30,
            decoration: BoxDecoration(
              color: CourseAppTheme.appForthColor,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Column(children: [
              _Notifications(textStyle: textStyle, padding: _settingsPadding),
              MyAppDivider(mainPadding: CourseAppTheme.mainPadding),
              _MobileData(
                  textStyle: textStyle,
                  contextSize: contextSize,
                  padding: _settingsPadding),
              MyAppDivider(mainPadding: CourseAppTheme.mainPadding),
              _pictureQuality(
                  settingsPadding: _settingsPadding, textStyle: textStyle),
              MyAppDivider(mainPadding: CourseAppTheme.mainPadding),
              _Language(
                  settingsPadding: _settingsPadding, textStyle: textStyle),
              SizedBox(
                height: 7,
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class _Language extends StatelessWidget {
  const _Language({
    super.key,
    required EdgeInsets settingsPadding,
    required this.textStyle,
  }) : _settingsPadding = settingsPadding;

  final EdgeInsets _settingsPadding;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _settingsPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            MyAppTexts.language,
            style: textStyle.bodyMedium,
          ),
          Row(
            children: [
              Text(MyAppTexts.languageSelected),
              SizedBox(width: 10),
              Icon(CupertinoIcons.chevron_left),
            ],
          )
        ],
      ),
    );
  }
}

class _pictureQuality extends StatelessWidget {
  const _pictureQuality({
    super.key,
    required EdgeInsets settingsPadding,
    required this.textStyle,
  }) : _settingsPadding = settingsPadding;

  final EdgeInsets _settingsPadding;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _settingsPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            MyAppTexts.pictureQuality,
            style: textStyle.bodyMedium,
          ),
          Row(
            children: [
              Text(MyAppTexts.pictureQualitySelected),
              SizedBox(width: 10),
              Icon(CupertinoIcons.chevron_left),
            ],
          )
        ],
      ),
    );
  }
}

class _MobileData extends StatelessWidget {
  final Size contextSize;
  final EdgeInsets padding;
  const _MobileData({
    super.key,
    required this.textStyle,
    required this.contextSize,
    required this.padding,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MyAppTexts.mobileData,
                style: textStyle.bodyMedium,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 6, 0),
                  width: contextSize.width - 150,
                  child: Text(
                    MyAppTexts.mobileDataDescriptionText,
                    style: textStyle.bodySmall,
                    textAlign: TextAlign.justify,
                  )),
            ],
          ),
          Column(
            children: [
              my_app_switch(),
            ],
          )
        ],
      ),
    );
  }
}

class _Notifications extends StatelessWidget {
  final EdgeInsets padding;
  const _Notifications({
    super.key,
    required this.textStyle,
    required this.padding,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            MyAppTexts.notifications,
            style: textStyle.bodyMedium,
          ),
          my_app_switch()
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
      padding: CourseAppTheme.mainPadding.copyWith(top: 25, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(
                CupertinoIcons.settings,
                size: 50,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                MyAppTexts.settings,
                style: textStyle.titleLarge,
              )
            ],
          )
        ],
      ),
    );
  }
}
