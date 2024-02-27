import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/core/constants/images/image_constant.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Image.asset(ImageConstant.appLogoPng)),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: ColorConstant.primaryBlack.withOpacity(0.2)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.1,
                            color:
                                ColorConstant.primaryBlack.withOpacity(0.2)))),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: ColorConstant.primaryBlack.withOpacity(0.2)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 0.1,
                            color:
                                ColorConstant.primaryBlack.withOpacity(0.2)))),
              ),
              TextButton(
                  onPressed: () {},
                  child: Container(
                    width: double.infinity,
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
                text: "Log In",
                buttonColor: ColorConstant.primaryBlue.withOpacity(0.4),
              )
            ],
          ),
        ),
      ),
    );
  }
}
