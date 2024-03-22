import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/view/notification_screen/widget/custom_card_builder_with_title.dart';

class YourNotificationsTab extends StatefulWidget {
  const YourNotificationsTab({super.key});

  @override
  State<YourNotificationsTab> createState() => _YourNotificationsTabState();
}

class _YourNotificationsTabState extends State<YourNotificationsTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: ColorConstant.primaryBlack.withOpacity(.1)))),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
              child: Text("Follow requests")),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              10,
              (index) => CustomCardBuilderWithTile(
                itemCount: index + 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
