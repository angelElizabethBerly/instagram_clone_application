import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/view/notification_screen/tabs/your_notifications_tab.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: TabBar(
                indicatorWeight: 1,
                dividerHeight: 1,
                indicatorColor: ColorConstant.primaryBlack,
                labelColor: ColorConstant.primaryBlack,
                unselectedLabelColor:
                    ColorConstant.primaryBlack.withOpacity(.3),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    text: "Following",
                  ),
                  Tab(
                    text: "You",
                  ),
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.yellow,
            ),
            YourNotificationsTab()
          ],
        ),
      ),
    );
  }
}
