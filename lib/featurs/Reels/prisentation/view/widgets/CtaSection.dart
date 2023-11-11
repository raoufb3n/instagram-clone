

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/featurs/Reels/prisentation/view/widgets/ReelsCtaItem.dart';

class CtaSection extends StatelessWidget {
  const CtaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReelCtaItem(
          icon: InstaIcons.likeWhite,
          label: 'Like',
        ),
        ReelCtaItem(
          icon: InstaIcons.commentWhite,
          label: 'Comment',
        ),
        ReelCtaItem(
          icon: InstaIcons.sendWhite,
          label: 'Share',
        ),
        IconButton(onPressed: () {}, icon: InstaIcons.menuWhite)
      ],
    );
  }
}