// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/view/create_post_screen/create_post_screen.dart';
import 'package:instagram_clone_application/view/home_screen/home_screen.dart';
import 'package:instagram_clone_application/view/notification_screen/notification_screen.dart';
import 'package:instagram_clone_application/view/profile_screen/profile_screen.dart';
import 'package:instagram_clone_application/view/search_screen/search_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List screenList = [
    HomeScreen(),
    SearchScreen(),
    Container(color: Colors.white),
    NotificationScreen(),
    Profilescreen()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value != 2) {
              selectedIndex = value;
              setState(() {});
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreatePostScreen()));
            }
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home, size: 35),
                icon: Icon(Icons.home_outlined, size: 35),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.search, size: 35, opticalSize: 10),
                icon: Icon(Icons.search, size: 30),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.add_box_rounded, size: 35),
                icon: Icon(Icons.add_box_outlined, size: 35),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite_outlined, size: 30),
                icon: Icon(Icons.favorite_border, size: 30),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  radius: 18,
                  backgroundColor: ColorConstant.primaryBlack,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1615776/pexels-photo-1615776.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  ),
                ),
                icon: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1615776/pexels-photo-1615776.jpeg?auto=compress&cs=tinysrgb&w=600"),
                ),
                label: "")
          ],
          currentIndex: selectedIndex),
    );
  }
}
