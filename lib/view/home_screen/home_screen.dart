// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/core/constants/image_constant.dart';
import 'package:instagram_clone_application/dummy_db/dummy_db.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt_outlined, size: 30),
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset(ImageConstant.appLogoPng, scale: 1.5),
        ),
        centerTitle: true,
        actions: [
          Image.asset(ImageConstant.igtvPng),
          SizedBox(width: 20),
          Image.asset(ImageConstant.messengerPng),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: [
          Divider(),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.13,
            width: 800,
            child: ListView.builder(
              itemCount: DummyDB.storyData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Stack(children: [
                          SizedBox.square(
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xffFBAA47),
                                      Color(0xffD91A46),
                                      Color(0xffA60F93)
                                    ]),
                                    shape: BoxShape.circle,
                                  ),
                                  child: CircleAvatar(
                                      backgroundColor:
                                          ColorConstant.primaryWhite,
                                      radius: 35,
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage: NetworkImage(DummyDB
                                            .storyData[index]["pro_pic"]),
                                      ))),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 27,
                            child: Visibility(
                              visible: DummyDB.storyData[index]["live"] == true
                                  ? true
                                  : false,
                              child: Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: ColorConstant.primaryWhite,
                                          width: 4),
                                      gradient: LinearGradient(colors: [
                                        Color(0xffA60F93),
                                        Color(0xffD22463),
                                        Color(0xffE10038)
                                      ])),
                                  child: Text(
                                    "LIVE",
                                    style: TextStyle(
                                        color: ColorConstant.primaryWhite,
                                        fontSize: 8),
                                  )),
                            ),
                          )
                        ]),
                        Text(
                          DummyDB.storyData[index]["name"],
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Divider(height: 1),
          SizedBox(
            height: 800,
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                            radius: 23,
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/1214205/pexels-photo-1214205.jpeg?auto=compress&cs=tinysrgb&w=600")),
                        title: Row(
                          children: [
                            Text(
                              "joshua_i",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 5),
                            Image.asset(ImageConstant.officalPng)
                          ],
                        ),
                        subtitle: Text("Tokyo, Japan",
                            style: TextStyle(fontSize: 11)),
                        trailing: Icon(Icons.more_horiz),
                      ),
                      Container(
                        height: 350,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/15577341/pexels-photo-15577341/free-photo-of-lesser-kestrel-perching-on-a-twig.jpeg?auto=compress&cs=tinysrgb&w=600"))),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            decoration: BoxDecoration(
                                color:
                                    ColorConstant.primaryBlack.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15)),
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              "1/3",
                              style:
                                  TextStyle(color: ColorConstant.primaryWhite),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border, size: 30),
                            SizedBox(width: 15),
                            Image.asset(ImageConstant.commentPng),
                            SizedBox(width: 15),
                            Image.asset(ImageConstant.messengerPng),
                            SizedBox(width: 85),
                            Icon(Icons.more_horiz),
                            Spacer(),
                            Icon(Icons.bookmark_outline_outlined, size: 30)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 15,
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600")),
                            SizedBox(width: 10),
                            RichText(
                                text: TextSpan(
                                    text: "Liked by ",
                                    style: TextStyle(
                                        color: ColorConstant.primaryBlack,
                                        fontSize: 13),
                                    children: [
                                  TextSpan(
                                      text: "craig_love",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                    text: " and ",
                                    style: TextStyle(
                                        color: ColorConstant.primaryBlack,
                                        fontSize: 13),
                                  ),
                                  TextSpan(
                                      text: "44,686 others",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))
                                ]))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: RichText(
                            text: TextSpan(
                                text: "joshua_l ",
                                style: TextStyle(
                                    color: ColorConstant.primaryBlack,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                                children: [
                              TextSpan(
                                  text:
                                      " The game in Japan was amazing and I want to share some photos",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ])),
                      ),
                      SizedBox(height: 10)
                    ],
                  );
                },
                itemCount: 2),
          )
        ]),
      ),
    );
  }
}
