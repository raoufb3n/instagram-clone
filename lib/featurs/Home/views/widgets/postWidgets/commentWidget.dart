import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 13,
              backgroundImage: AssetImage(
                  'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Add a comment',
              style: Styles.titleMeduim13.copyWith(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
