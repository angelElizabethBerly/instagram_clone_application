import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone_application/global_widgets/custom_button.dart';
import 'package:instagram_clone_application/core/constants/color_constant.dart';

class CustonNotificationCard extends StatefulWidget {
  const CustonNotificationCard({super.key});

  @override
  State<CustonNotificationCard> createState() => _CustonNotificationCardState();
}

class _CustonNotificationCardState extends State<CustonNotificationCard> {
  @override
  Widget build(BuildContext context) {
    List profileImages = ["", ""];
    bool isFollow = true;
    bool isAlreayFollowing = true;
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          profileImages.length < 2
              ? CircleAvatar(
                  radius: 22,
                )
              : Stack(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                    ),
                    CircleAvatar(
                      radius: 16,
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: ColorConstant.primaryWhite,
                          child: CircleAvatar(
                            radius: 16,
                          ),
                        ))
                  ],
                ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              "karennne liked your photo. 1h",
              maxLines: 3,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 20),
          isFollow
              ? CustomButton(
                  verticalPadding: 5,
                  horizontalPadding: 20,
                  text: isAlreayFollowing ? "Message" : "Follow",
                  buttonColor: isAlreayFollowing
                      ? Colors.transparent
                      : ColorConstant.primaryBlue,
                  textColor: isAlreayFollowing
                      ? ColorConstant.primaryBlack
                      : ColorConstant.primaryWhite,
                  haveBorder: isAlreayFollowing,
                )
              : Container(
                  height: 44,
                  width: 44,
                  color: Colors.red,
                )
        ],
      ),
    );
  }
}
