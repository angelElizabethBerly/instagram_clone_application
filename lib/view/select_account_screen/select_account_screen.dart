// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/core/constants/images/image_constant.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';
import 'package:instagram_clone_application/view/login_screen/login_screen.dart';

class SelectAccountScreen extends StatelessWidget {
  const SelectAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(child: Image.asset(ImageConstant.appLogoPng)),
              SizedBox(height: 40),
              CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/943084/pexels-photo-943084.jpeg?auto=compress&cs=tinysrgb&w=600")),
              SizedBox(height: 10),
              Text(
                "Angel",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              CustomButton(
                text: "Log in",
                onTap: () {},
              ),
              SizedBox(height: 20),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "Switch Accounts",
                    style: TextStyle(
                        color: ColorConstant.primaryBlue,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration:
              BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                      color: ColorConstant.primaryBlack.withOpacity(0.4)),
                  children: [
                    TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorConstant.primaryBlack))
                  ]))),
    );
  }
}
