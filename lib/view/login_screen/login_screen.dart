// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/core/constants/image_constant.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';
import 'package:instagram_clone_application/view/bottom_navigation/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nameController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: Image.asset(ImageConstant.appLogoPng)),
                SizedBox(height: 40),
                TextFormField(
                  controller: nameController,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                      fillColor: ColorConstant.lightGrey,
                      filled: true,
                      hintText: "Username",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: ColorConstant.primaryBlack.withOpacity(0.2)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstant.primaryBlack
                                  .withOpacity(0.1)))),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: passController,
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: ColorConstant.lightGrey,
                      filled: true,
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: ColorConstant.primaryBlack.withOpacity(0.2)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstant.primaryBlack
                                  .withOpacity(0.1)))),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                TextButton(
                    onPressed: () {},
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 12,
                            color: ColorConstant.primaryBlue,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                CustomButton(
                  width: double.infinity,
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigation(),
                        ),
                        (route) => false);
                  },
                  text: "Log In",
                  buttonColor: nameController.text.isNotEmpty &&
                          passController.text.isNotEmpty
                      ? ColorConstant.primaryBlue
                      : ColorConstant.primaryBlue.withOpacity(0.4),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImageConstant.facebookLogoPng),
                    SizedBox(width: 10),
                    Text(
                      "Log in with Facebook",
                      style: TextStyle(
                          color: ColorConstant.primaryBlue,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Divider(
                            endIndent: 10,
                            height: 1,
                            color:
                                ColorConstant.primaryBlack.withOpacity(0.2))),
                    Text(
                      "OR",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: ColorConstant.primaryBlack.withOpacity(0.4)),
                    ),
                    Expanded(
                        child: Divider(
                            indent: 10,
                            height: 1,
                            color: ColorConstant.primaryBlack.withOpacity(0.2)))
                  ],
                ),
                SizedBox(height: 30),
                RichText(
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
                                  color: ColorConstant.primaryBlue))
                        ]))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration:
              BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
          child: Text(
            "Instagram or Facebook",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                color: ColorConstant.primaryBlack.withOpacity(0.4)),
          )),
    );
  }
}
