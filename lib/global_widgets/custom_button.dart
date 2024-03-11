// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.buttonColor = ColorConstant.primaryBlue,
      this.haveBorder = false,
      this.onTap,
      this.textColor = ColorConstant.primaryWhite,
      this.verticalPadding = 10,
      this.horizontalPadding = 0});
  final String text;
  final Color textColor;
  final double verticalPadding;
  final Color buttonColor;
  final bool haveBorder;
  final double horizontalPadding;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding, horizontal: horizontalPadding),
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
                color: textColor, fontSize: 14, fontWeight: FontWeight.w500),
          )),
    );
  }
}
