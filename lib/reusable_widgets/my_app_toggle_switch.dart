import 'package:course_shop/theme.dart';
import 'package:flutter/material.dart';

class my_app_switch extends StatefulWidget {
  const my_app_switch({
    super.key,
  });

  @override
  State<my_app_switch> createState() => _my_app_switchState();
}

class _my_app_switchState extends State<my_app_switch> {
  bool _toggleSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: _toggleSwitch,
      activeColor: CourseAppTheme.appPrimaryColor,
      inactiveThumbColor: CourseAppTheme.appSecondaryColor,
      onChanged: (value) {
        setState(() {
          _toggleSwitch = value;
        });
      },
    );
  }
}