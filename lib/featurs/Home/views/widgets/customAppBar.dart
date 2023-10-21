import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: InstaIcons.like),
              IconButton(onPressed: () {}, icon: InstaIcons.chat),
            ],
          ),
        ],
      ),
    );
  }
}
