

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';


class FollowButton extends StatelessWidget {
  const FollowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.white, width: 0.8),
        ),
        child: Text(
          'Follow',
          style: Styles.titleMeduim14
              .copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}