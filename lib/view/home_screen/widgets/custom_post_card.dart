// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/core/constants/image_constant.dart';
import 'package:instagram_clone_application/dummy_db/dummy_db.dart';

class CustomPostCard extends StatefulWidget {
  const CustomPostCard({super.key, required this.postIndex});
  final int postIndex;

  @override
  State<CustomPostCard> createState() => _CustomPostCardState();
}

class _CustomPostCardState extends State<CustomPostCard> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
              radius: 23,
              backgroundImage:
                  NetworkImage(DummyDB.postData[widget.postIndex]["pro_pic"])),
          title: Row(
            children: [
              Text(
                DummyDB.postData[widget.postIndex]["userName"],
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 5),
              DummyDB.postData[widget.postIndex]["isOfficial"]
                  ? Image.asset(ImageConstant.officalPng)
                  : SizedBox()
            ],
          ),
          subtitle: Text(DummyDB.postData[widget.postIndex]["place"],
              style: TextStyle(fontSize: 11)),
          trailing: Icon(Icons.more_horiz),
        ),
        SizedBox(
          height: 375,
          child: Stack(
            children: [
              PageView.builder(
                  itemCount: DummyDB.postImageList.length,
                  onPageChanged: (value) {
                    currentPage = value + 1;
                    setState(() {});
                  },
                  itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    DummyDB.postImageList[index]))),
                      )),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorConstant.primaryBlack.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    // "1/3",
                    "$currentPage/${DummyDB.postImageList.length}",
                    style: TextStyle(color: ColorConstant.primaryWhite),
                  ),
                ),
              ),
            ],
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
                      DummyDB.postData[widget.postIndex]["pro_pic"])),
              SizedBox(width: 10),
              RichText(
                  text: TextSpan(
                      text: "Liked by ",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack, fontSize: 13),
                      children: [
                    TextSpan(
                        text: DummyDB.postData[widget.postIndex]["likedName"],
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                      text: " and ",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack, fontSize: 13),
                    ),
                    TextSpan(
                        text: DummyDB.postData[widget.postIndex]["likedCount"],
                        style: TextStyle(fontWeight: FontWeight.w600))
                  ]))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: RichText(
              text: TextSpan(
                  text: DummyDB.postData[widget.postIndex]["userName"],
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                  children: [
                TextSpan(
                    text:
                        ' ${DummyDB.postData[widget.postIndex]["description"]}',
                    style: TextStyle(fontWeight: FontWeight.normal))
              ])),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
