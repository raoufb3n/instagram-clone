import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/icons.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/postAvatar.dart';

class PostInfo extends StatelessWidget {
  const PostInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const PostAvatar(
            isStory: true,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'abderraouf',
                style: Styles.displayBold12,
              ),
              Text(
                'Batna(Algeria)',
                style: Styles.titleRegular12,
              )
            ],
          ),
          const Spacer(),
            Container(
            alignment: Alignment.centerRight,
            child: IconButton(onPressed: () {}, icon: InstaIcons.plus),
          )
        ],
      ),
    );
  }
}