import 'package:flutter/material.dart';

class CourseAppTheme {
  static const String defaultFont = 'IranYekan';
  static const Color appBackGroundColor = Color.fromARGB(255, 233, 233, 233);
  static const Color appPrimaryColor = Color.fromARGB(255, 219, 67, 21);
  static const Color appSecondaryColor = Color.fromARGB(255, 241, 130, 85);
  static const Color appThirdColor = Color.fromARGB(59, 165, 146, 146);
  static const Color appForthColor = Colors.white;
  static const Color appFifthColor = Colors.blue;
  static const Color appsixthColor = Colors.black45;
  static const Color appBorderColor = Color.fromARGB(115, 63, 61, 61);
  static const Color appButtonsColor = Color.fromARGB(115, 133, 241, 182);
  static const Color appButtonsTextColor = Colors.black;
  static const Color appButtonsTextSecondaryColor =
      Color.fromARGB(255, 88, 52, 219);
  static const mainPadding = EdgeInsets.fromLTRB(25, 0, 25, 0);

  CourseAppTheme();

  static ThemeData appTheme() {
    return ThemeData(
      textTheme: const TextTheme(
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
        bodyMedium: TextStyle(
            fontFamily: defaultFont, fontWeight: FontWeight.w500, fontSize: 17),
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );
  }

  static IconButtonThemeData iconButtonThemeData() {
    return IconButtonThemeData(
        style: ButtonStyle(
      iconSize: const MaterialStatePropertyAll(30),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    ));
  }
}
