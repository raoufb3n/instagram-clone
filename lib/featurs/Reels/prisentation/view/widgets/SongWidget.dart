
import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class SongWidget extends StatelessWidget {
  const SongWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width / 2,
      child: Row(
        children: [
          InstaIcons.music,
          const SizedBox(
            width: 8,
          ),
          Text(
            'Song Name',
            overflow: TextOverflow.ellipsis,
            style: Styles.titleMeduim14
                .copyWith(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }
}
