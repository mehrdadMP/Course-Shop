import 'package:course_shop/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppIconButton extends StatelessWidget {
  final IconData iconData;
  final Function()? onTap;
  final bool setBorder;

  const MyAppIconButton({
    required this.iconData,
    super.key,
    required this.onTap,
    required this.setBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Ink(
        decoration: BoxDecoration(
          border: setBorder == true
              ? Border.all(width: 0.5, color: CourseAppTheme.appBorderColor)
              : null,
          color: CourseAppTheme.appThirdColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              iconData,
              size: 20.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
