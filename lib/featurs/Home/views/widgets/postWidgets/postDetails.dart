import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/styles.dart';

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
            style: Styles.displayBold13,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'abderraouf ',
                style: Styles.displayBold14
                    .copyWith(color: ColorsStyles.TypoColor)),
            TextSpan(
                text:
                    'Hello im a UX designer é a mobile developer,im proud to make that project.',
                style: Styles.titleRegular13
                    .copyWith(color: ColorsStyles.TypoColor))
          ]))
        ],
      ),
    );
  }
}
