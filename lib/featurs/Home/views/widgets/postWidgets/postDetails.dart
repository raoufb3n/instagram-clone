import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/colors.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';


class PostDetails extends StatelessWidget {
  const PostDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '100 Likes',
            style: Styles.displayBold14,
          ),
          const SizedBox(
            height: 4,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'abderraouf ',
                style: Styles.displayBold16.copyWith(
                    color: ColorsStyles.TypoColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 15)),
            TextSpan(
                text:
                    'Hello im a UX designer é a mobile developer,im proud to make that project.',
                style: Styles.titleRegular13
                    .copyWith(color: ColorsStyles.TypoColor)),
          ])),
          const SizedBox(
            height: 8,
          ),
          Text(
            'View All 16 comments',
            style: Styles.titleMeduim14.copyWith(color: Colors.grey),
          ),
       
        ],
      ),
    );
  }
}
