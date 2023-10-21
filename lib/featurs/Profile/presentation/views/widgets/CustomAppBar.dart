import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
      child: Row(
        children: [
          Row(
            children: [
              Text(
                'abderraouf',
                style: Styles.displayBold16.copyWith(fontSize: 19),
              ),
              GestureDetector(
                  child: Icon(Icons.keyboard_arrow_down_rounded))
            ],
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: InstaIcons.add),
          IconButton(onPressed: () {}, icon: InstaIcons.menu)
        ],
      ),
    );
  }
}
