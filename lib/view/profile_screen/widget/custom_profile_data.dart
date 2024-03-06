// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomProfileDataWidget extends StatelessWidget {
  const CustomProfileDataWidget(
      {super.key, required this.value, required this.title});
  final int value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Text(title, style: TextStyle(fontSize: 13))
      ],
    );
  }
}
