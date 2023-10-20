import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Image.asset('assets/images/Instagram logo.png'),
        ),
        Text(
          'from',
          style:
              Styles.titleMeduim14.copyWith(color: Colors.grey, fontSize: 16),
        )
      ],
    );
  }
}
