

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';


class ReelCtaItem extends StatelessWidget {
  const ReelCtaItem({
    super.key,
    required this.icon,
    required this.label,
  });
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: icon,
          color: Colors.white,
          iconSize: 30,
        ),
        Text(
          label,
          style: Styles.titleMeduim14.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 12,
        )
      ],
    );
  }
}