import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.deepPurple,borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(20),
    );
  }
}