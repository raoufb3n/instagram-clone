import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/icons.dart';

class PostCtas extends StatelessWidget {
  const PostCtas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: InstaIcons.like),
          IconButton(onPressed: () {}, icon: InstaIcons.comment),
          IconButton(onPressed: () {}, icon: InstaIcons.send),
          const Spacer(),
          IconButton(onPressed: () {}, icon: InstaIcons.save),
        ],
      ),
    );
  }
}