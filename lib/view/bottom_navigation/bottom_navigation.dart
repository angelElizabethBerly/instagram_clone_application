// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/view/home_screen/home_screen.dart';
import 'package:instagram_clone_application/view/select_account_screen/select_account_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List screenList = [
    HomeScreen(),
    Container(color: Colors.black),
    Container(color: Colors.white),
    Container(color: Colors.blue),
    Container(color: Colors.blueGrey)
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectAccountScreen()));
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
            BottomNavigationBarItem(icon: CircleAvatar(radius: 15), label: "")
          ],
          currentIndex: selectedIndex),
    );
  }
}
