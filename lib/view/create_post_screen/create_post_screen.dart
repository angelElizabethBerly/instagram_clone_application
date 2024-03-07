// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: TextButton(
            child: Text(
              "Cancel",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Recents",
                style: TextStyle(fontSize: 18),
              ),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          centerTitle: true,
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(color: ColorConstant.primaryBlue),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/18424481/pexels-photo-18424481/free-photo-of-a-man-fishing-from-the-pier.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstant.primaryBlack,
                            borderRadius: BorderRadius.circular(40)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.all_inclusive,
                              color: ColorConstant.primaryWhite),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstant.primaryBlack,
                            borderRadius: BorderRadius.circular(40)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.grid_3x3,
                              color: ColorConstant.primaryWhite),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorConstant.primaryBlack,
                            borderRadius: BorderRadius.circular(40)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.all_inclusive,
                              color: ColorConstant.primaryWhite),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
        bottomNavigationBar: TabBar(
            labelColor: ColorConstant.primaryBlack,
            unselectedLabelColor: ColorConstant.primaryBlack.withOpacity(0.5),
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            indicatorWeight: 1,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerHeight: 0,
            tabs: [
              Tab(text: "Library"),
              Tab(text: "Photo"),
              Tab(text: "Video"),
            ]),
      ),
    );
  }
}
