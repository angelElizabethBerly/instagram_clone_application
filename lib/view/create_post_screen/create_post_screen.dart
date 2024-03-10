import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/view/create_post_screen/tabs/library_tab.dart';
import 'package:instagram_clone_application/view/create_post_screen/tabs/photos_tab.dart';

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
          leadingWidth: 80,
          leading: TextButton(
            child: Text(
              "cancel",
              style: TextStyle(
                color: ColorConstant.primaryBlack,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Recents"),
              SizedBox(width: 10),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: ColorConstant.primaryBlack),
          centerTitle: true,
          actions: [
            TextButton(
              child: Text(
                "Next",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorConstant.primaryBlue),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"))),
              height: 375,
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryBlack.withOpacity(.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.all_inclusive,
                        size: 25,
                        color: ColorConstant.lightGrey,
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryBlack.withOpacity(.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.space_dashboard_outlined,
                        size: 25,
                        color: ColorConstant.lightGrey,
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryBlack.withOpacity(.4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.filter_none,
                            size: 25,
                            color: ColorConstant.lightGrey,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "SELECT MULTIPPLE",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: ColorConstant.primaryWhite),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(children: [
              LibraryTab(),
              PhotosTab(),
              LibraryTab(),
            ]))
          ],
        ),
        bottomNavigationBar: TabBar(
            indicatorWeight: 1,
            dividerHeight: 0,
            labelColor: ColorConstant.primaryBlack,
            unselectedLabelColor: ColorConstant.primaryBlack.withOpacity(.3),
            indicator: BoxDecoration(),
            tabs: [
              Tab(
                text: "Library",
              ),
              Tab(
                text: "Photo",
              ),
              Tab(
                text: "Video",
              ),
            ]),
      ),
    );
  }
}
