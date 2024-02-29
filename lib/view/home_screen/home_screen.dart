// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/image_constant.dart';
import 'package:instagram_clone_application/dummy_db/dummy_db.dart';
import 'package:instagram_clone_application/view/home_screen/widgets/custom_post_card.dart';
import 'package:instagram_clone_application/view/home_screen/widgets/custom_story_avatar.dart';

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
                  children: [CustomStoryAvatar(index: index)],
                );
              },
            ),
          ),
          Divider(height: 1),
          Column(
              children: List.generate(DummyDB.postData.length,
                  (index) => CustomPostCard(postIndex: index)))
        ]),
      ),
    );
  }
}
