import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';
import 'package:instagram_clone_application/view/notification_screen/widget/custom_notification_card.dart';

class CustomCardBuilderWithTile extends StatelessWidget {
  const CustomCardBuilderWithTile({super.key, required this.itemCount});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: ColorConstant.primaryBlack.withOpacity(.1)))),
      padding: EdgeInsets.only(left: 16, right: 16, top: 13),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Title",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Column(
            children:
                List.generate(itemCount, (index) => CustonNotificationCard()),
          )
        ],
      ),
    );
  }
}
