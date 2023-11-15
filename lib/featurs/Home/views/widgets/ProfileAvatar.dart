import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class ProfileAvatar extends StatelessWidget {
   ProfileAvatar({super.key, required this.isUser,this.onTap});
  final bool isUser;
  void Function()? onTap=()=>{};
  @override
  Widget build(BuildContext context) {
    if (isUser == true) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
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
          ),
          const SizedBox(
            height: 3,
          ),
          SizedBox(
            width: 90,
            child: Text(
              'Your Story',
              textAlign: TextAlign.center,
              style: Styles.titleMeduim13.copyWith(color: Colors.grey),
            ),
          )
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Stack(
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
            ),
          ),
          SizedBox(
            width: 90,
            child: Text(
              'abderraouf',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style:
                  Styles.titleMeduim13.copyWith(color: ColorsStyles.TypoColor),
            ),
          )
        ],
      );
    }
  }
}
