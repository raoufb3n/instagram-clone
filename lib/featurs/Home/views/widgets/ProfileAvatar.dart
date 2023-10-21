import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';

class ProfileAvatar extends StatelessWidget {
  ProfileAvatar({super.key, required this.isUser});
  bool isUser;
  @override
  Widget build(BuildContext context) {
    if (isUser == true) {
      return Stack(
        children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: AssetImage(
                'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
          ),
          Positioned(
            bottom: -2,
            right: -1,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: ColorsStyles.white,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: ColorsStyles.blue,
                  child: InstaIcons.addStory,
                ),
              ],
            ),
          )
        ],
      );
    } else {
      return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 78,
            width: 78,
            decoration: BoxDecoration(
              gradient: ColorsStyles.gradient,
              shape: BoxShape.circle,
            ),
          ),
          CircleAvatar(
            radius: 36,
            backgroundColor: ColorsStyles.white,
          ),
          CircleAvatar(
            radius: 34,
            backgroundImage: AssetImage(
                'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
          )
        ],
      );
    }
  }
}
