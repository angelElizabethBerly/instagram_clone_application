// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';
import 'package:instagram_clone_application/view/profile_screen/widget/custom_profile_data.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(mainAxisSize: MainAxisSize.min, children: [
          Icon(Icons.lock_sharp, size: 15),
          SizedBox(width: 5),
          Text("jacob_w",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Icon(Icons.keyboard_arrow_down)
        ]),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, size: 30),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: ColorConstant.primaryBlack)),
                    child: CircleAvatar(
                      radius: 43,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/10031899/pexels-photo-10031899.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                    ),
                  ),
                  CustomProfileDataWidget(value: 54, title: "Posts"),
                  CustomProfileDataWidget(value: 834, title: "Followers"),
                  CustomProfileDataWidget(value: 162, title: "Following")
                ],
              ),
            ),
            Text(
              "Jacob West",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            RichText(
              text: TextSpan(
                  text: "Digital goodies designer ",
                  style: TextStyle(
                      color: ColorConstant.primaryBlack, fontSize: 12),
                  children: [
                    TextSpan(
                        text: "@pixellz",
                        style: TextStyle(color: ColorConstant.primaryBlue)),
                    TextSpan(text: "\nEverything is designed")
                  ]),
            ),
            SizedBox(height: 15),
            CustomButton(
                verticalPadding: 5,
                text: "Edit Profile",
                textColor: ColorConstant.primaryBlack,
                buttonColor: ColorConstant.primaryWhite,
                haveBorder: true),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color:
                                  ColorConstant.primaryBlack.withOpacity(0.5)),
                        ),
                        child: Icon(Icons.add, size: 25),
                      ),
                      SizedBox(height: 5),
                      Text("New", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  Row(
                    children: List.generate(
                        10,
                        (index) => Row(
                              children: [
                                SizedBox(width: 18),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color:
                                                  ColorConstant.primaryBlack)),
                                      child: CircleAvatar(
                                        radius: 24,
                                        backgroundImage: NetworkImage(
                                            "https://images.pexels.com/photos/10031899/pexels-photo-10031899.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text("Friends",
                                        style: TextStyle(fontSize: 12))
                                  ],
                                ),
                              ],
                            )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
