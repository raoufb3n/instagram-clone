
import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';

class DescWidget extends StatelessWidget {
  const DescWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width / 2,
      child: Text('Description',
      overflow: TextOverflow.ellipsis,
          style: Styles.titleRegular14
              .copyWith(color: Colors.white, fontSize: 15)),
    );
  }
}