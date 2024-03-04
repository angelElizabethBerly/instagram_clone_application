// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/core/constants/image_constant.dart';

class CustomPostCard extends StatefulWidget {
  const CustomPostCard(
      {super.key,
      required this.userName,
      required this.proPic,
      this.isOfficial = false,
      required this.place,
      required this.post,
      this.isLiked = false,
      required this.likedName,
      required this.likedCount,
      this.description,
      required this.date});
  final String userName;
  final String proPic;
  final bool isOfficial;
  final String place;
  final List post;
  final bool isLiked;
  final String likedName;
  final String likedCount;
  final String? description;
  final String date;

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
              radius: 23, backgroundImage: NetworkImage(widget.proPic)),
          title: Row(
            children: [
              Text(
                widget.userName,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 5),
              widget.isOfficial
                  ? Image.asset(ImageConstant.officalPng)
                  : SizedBox()
            ],
          ),
          subtitle: Text(widget.place, style: TextStyle(fontSize: 11)),
          trailing: Icon(Icons.more_horiz),
        ),
        SizedBox(
          height: 375,
          child: Stack(
            children: [
              PageView.builder(
                  itemCount: widget.post.length,
                  onPageChanged: (value) {
                    currentPage = value + 1;
                    setState(() {});
                  },
                  itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(widget.post[index]))),
                      )),
              Positioned(
                top: 5,
                right: 5,
                child: Visibility(
                  visible: widget.post.length != 1 ? true : false,
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryBlack.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15)),
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      // "1/3",
                      "$currentPage/${widget.post.length}",
                      style: TextStyle(color: ColorConstant.primaryWhite),
                    ),
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
              Row(
                children: [
                  widget.isLiked
                      ? Icon(
                          Icons.favorite,
                          size: 30,
                          color: ColorConstant.storyGradient2,
                        )
                      : Icon(Icons.favorite_border, size: 30),
                  SizedBox(width: 10),
                  Image.asset(ImageConstant.commentPng),
                  SizedBox(width: 10),
                  Image.asset(ImageConstant.messengerPng),
                ],
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    widget.post.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Visibility(
                            visible: widget.post.length != 1 ? true : false,
                            child: CircleAvatar(
                                radius: (index == currentPage - 1) ? 4 : 3,
                                backgroundColor: (index == currentPage - 1)
                                    ? ColorConstant.primaryBlue
                                    : ColorConstant.primaryBlack
                                        .withOpacity(0.2)),
                          ),
                        )),
              )),
              Icon(Icons.bookmark_outline_outlined, size: 30)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                  radius: 15, backgroundImage: NetworkImage(widget.proPic)),
              SizedBox(width: 10),
              RichText(
                  text: TextSpan(
                      text: "Liked by ",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack, fontSize: 13),
                      children: [
                    TextSpan(
                        text: widget.likedName,
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                      text: " and ",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack, fontSize: 13),
                    ),
                    TextSpan(
                        text: widget.likedCount,
                        style: TextStyle(fontWeight: FontWeight.w600))
                  ]))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: RichText(
              text: TextSpan(
                  text: widget.userName,
                  style: TextStyle(
                      color: ColorConstant.primaryBlack,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                  children: [
                TextSpan(
                    text: ' ${widget.description ?? ""}',
                    style: TextStyle(fontWeight: FontWeight.normal))
              ])),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            widget.date,
            style: TextStyle(
                fontSize: 12,
                color: ColorConstant.primaryBlack.withOpacity(0.4)),
          ),
        )
      ],
    );
  }
}
