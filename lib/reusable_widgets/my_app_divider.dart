import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppDivider extends StatelessWidget {
  final EdgeInsetsGeometry mainPadding;
  const MyAppDivider({
    super.key,
    required this.mainPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding,
      child: const Divider(),
    );
  }
}
