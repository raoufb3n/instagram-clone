import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            child: Image.asset(
          'assets/images/instaLgram.png',
            
        )
        ),
        Stack(
          children: [
            Positioned(
              top: 8,
              right: 43,
              child: Text(
                'from',
                style: Styles.titleMeduim14
                    .copyWith(color: Colors.grey, fontSize: 16),
              ),
            ),
            Image.asset(
              'assets/images/metaLogo.png',
              height: 120,
            )
          ],
        )
      ],
    );
  }
}
