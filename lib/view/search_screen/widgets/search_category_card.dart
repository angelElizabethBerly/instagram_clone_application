// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';

class SearchCatecgoryCard extends StatelessWidget {
  const SearchCatecgoryCard({super.key, this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: ColorConstant.primaryBlack.withOpacity(0.5))),
      child: Row(
        children: [
          icon != null ? Icon(icon, size: 20) : SizedBox(),
          SizedBox(width: 5),
          Text("data")
        ],
      ),
    );
  }
}
