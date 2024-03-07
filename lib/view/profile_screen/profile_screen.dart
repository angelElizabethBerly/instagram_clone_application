// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';
import 'package:instagram_clone_application/view/profile_screen/widget/custom_profile_data.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
        body: SingleChildScrollView(
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
                          border:
                              Border.all(color: ColorConstant.primaryBlack)),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Jacob West",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
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
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomButton(
                    verticalPadding: 5,
                    text: "Edit Profile",
                    textColor: ColorConstant.primaryBlack,
                    buttonColor: ColorConstant.primaryWhite,
                    haveBorder: true),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                  color: ColorConstant.primaryBlack
                                      .withOpacity(0.5)),
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
                                          padding: EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: ColorConstant
                                                      .primaryBlack)),
                                          child: CircleAvatar(
                                            radius: 27,
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
                ),
              ),
              Divider(height: 15),
              TabBar(
                  onTap: (value) {
                    setState(() {
                      currentTabIndex = value;
                    });
                  },
                  indicatorWeight: 1,
                  dividerHeight: 0,
                  indicatorColor: ColorConstant.primaryBlack,
                  labelColor: ColorConstant.primaryBlack,
                  unselectedLabelColor:
                      ColorConstant.primaryBlack.withOpacity(.3),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_rounded),
                    )
                  ]),
              currentTabIndex == 0
                  ? GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(index.isEven
                                      ? "https://images.pexels.com/photos/20115405/pexels-photo-20115405/free-photo-of-a-rose-bush-in-front-of-a-house-with-columns.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
                                      : "https://images.pexels.com/photos/20447460/pexels-photo-20447460/free-photo-of-palm-trees-paradise.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")))))
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(index.isEven
                                        ? "https://images.pexels.com/photos/20432992/pexels-photo-20432992/free-photo-of-funchal-at-madeira.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"
                                        : "https://images.pexels.com/photos/20424751/pexels-photo-20424751/free-photo-of-two-women-are-sitting-on-the-grass-taking-pictures.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                          ))
            ],
          ),
        ),
      ),
    );
  }
}
