import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/styles.dart';
import 'package:instagram_clone/featurs/Reels/prisentation/view/widgets/FollowButton.dart';


class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(
              'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          'abderraouf',
          style: Styles.titleMeduim14
              .copyWith(color: Colors.white, fontSize: 16),
        ),
        const SizedBox(
          width: 8,
        ),
        FollowButton()
      ],
    );
  }
}