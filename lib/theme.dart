import 'package:flutter/material.dart';

class CourseAppTheme {
  static final String defaultFont = 'IranYekan';
  static final Color appPrimaryColor = Color.fromARGB(255, 219, 67, 21);
  static final Color appSecondaryColor = Color.fromARGB(255, 241, 130, 85);
  static final Color appThirdColor = Color.fromARGB(59, 165, 146, 146);
  static final Color appForthColor = Colors.white;
  static final Color appFifthColor = Colors.blue;
  static final Color appsixthColor = Colors.black45;
  static final Color appBorderColor = const Color.fromARGB(115, 63, 61, 61);
  static final Color appButtonsColor = Color.fromARGB(115, 133, 241, 182);
  static final Color appButtonsTextColor = Colors.black;
  static final Color appButtonsTextSecondaryColor =
      Color.fromARGB(255, 88, 52, 219);
  static final mainPadding = EdgeInsets.fromLTRB(25, 0, 25, 0);

  CourseAppTheme();

  static ThemeData appTheme() {
    return ThemeData(
      textTheme: TextTheme(
        headlineSmall:
            TextStyle(fontFamily: defaultFont, fontWeight: FontWeight.w600),
        titleMedium:
            TextStyle(fontFamily: defaultFont, fontWeight: FontWeight.w700),
        titleLarge:
            TextStyle(fontFamily: defaultFont, fontWeight: FontWeight.w700),
        labelLarge:
            TextStyle(fontFamily: defaultFont, fontWeight: FontWeight.w100),
        bodySmall:
            TextStyle(fontFamily: defaultFont, fontWeight: FontWeight.normal),
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
  }

  static IconButtonThemeData iconButtonThemeData() {
    return IconButtonThemeData(
        style: ButtonStyle(
      iconSize: MaterialStatePropertyAll(30),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    ));
  }
}
