import 'package:course_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppTextField extends StatelessWidget {
  final textStyle;
  final labelText;
  final iconData;
  const MyAppTextField({
    super.key,
    required this.textStyle,
    required this.labelText,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 110,
        height: 50,
        child: TextField(
          style: textStyle.labelLarge,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide: BorderSide(
                    width: 2,
                    color: CourseAppTheme.appPrimaryColor,
                  )),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              labelText: labelText,
              labelStyle: textStyle.labelLarge
                  ?.copyWith(color: CourseAppTheme.appPrimaryColor),
              suffixIcon: IconButtonTheme(
                data: CourseAppTheme.iconButtonThemeData(),
                child: Padding(
                    padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    child: IconButton(
                      color: CourseAppTheme.appPrimaryColor,
                      onPressed: () {},
                      icon: Icon(iconData),
                    )),
              )),
        ));
  }
}
