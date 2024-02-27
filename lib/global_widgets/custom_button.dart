// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.buttonColor = ColorConstant.primaryBlue,
      this.haveBorder = false,
      this.onTap});
  final String text;
  final Color buttonColor;
  final bool haveBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              border: haveBorder == true
                  ? Border.all(
                      color: ColorConstant.primaryBlack.withOpacity(0.4))
                  : null,
              color: buttonColor,
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: ColorConstant.primaryWhite,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          )),
    );
  }
}
