import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/colors.dart';


class PostAvatar extends StatelessWidget {
 const PostAvatar({super.key, required this.isStory});
  final bool isStory;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: isStory
                  ? ColorsStyles.gradient
                  : LinearGradient(colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(0),
                    ])),
        ),
        CircleAvatar(
          radius: 19,
          backgroundColor: ColorsStyles.white,
        ),
        const CircleAvatar(
          radius: 17,
          backgroundImage:
              AssetImage('assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
        ),
      ],
    );
  }
}