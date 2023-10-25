import 'package:course_shop/first_screen_nav_bar.dart';
import 'package:course_shop/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", "IR"),
        Locale("en", "US"),
      ],
      locale: const Locale("fa", "IR"),
      title: 'Flutter Demo',
      theme: CourseAppTheme.appTheme(),
      home: const FirstScreenNavBar(),
    );
  }
}

