// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/dummy_db/dummy_db.dart';

class CustomStoryAvatar extends StatelessWidget {
  const CustomStoryAvatar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          SizedBox(height: 75),
          /*Stack widget will take size of the largest widget inside it*/
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              /*Outermost container for giving gradient border*/
              height: 62,
              width: 62,
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  ColorConstant.storyGradient1,
                  ColorConstant.storyGradient2,
                  ColorConstant.storyGradient3
                ]),
                shape: BoxShape.circle,
              ),
              child: Container(
                /*Container for giving image*/
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ColorConstant.primaryWhite, width: 3),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image:
                            NetworkImage(DummyDB.storyData[index]["pro_pic"]))),
              ),
            ),
          ),
          Positioned(
            /*Live container*/
            bottom: 0,
            child: Visibility(
              visible: DummyDB.storyData[index]["live"] == true ? true : false,
              child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: ColorConstant.primaryWhite, width: 3),
                      gradient: LinearGradient(colors: [
                        Color(0xffA60F93),
                        Color(0xffD22463),
                        Color(0xffE10038)
                      ])),
                  child: Text(
                    "LIVE",
                    style: TextStyle(
                        color: ColorConstant.primaryWhite, fontSize: 8),
                  )),
            ),
          )
        ]),
        Text(
          /*Name of story user*/
          DummyDB.storyData[index]["name"],
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
