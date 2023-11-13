import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class StoryViewBody extends StatelessWidget {
  const StoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      width: context.width,
      child: Stack(
        children: [
          AspectRatio(
              aspectRatio: 2 / 4,
              child: Image.asset(
                'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
                fit: BoxFit.fill,
              )),
          Positioned(
            top: 0,
            child: Container(
              width: context.width,
              height: context.height / 5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Color.fromARGB(100, 0, 0, 0),
                  Color.fromARGB(0, 32, 32, 32),
                ],
              )),
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            left: 16,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: context.width,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(
                          'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Abderraouf',
                      style: Styles.displayBold16
                          .copyWith(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '10min',
                      style: Styles.titleMeduim14
                          .copyWith(color: Colors.grey[300]),
                    ),
                    const Spacer(),
                    Transform.rotate(
                      angle: pi / 2,
                      child: GestureDetector(
                          onTap: () {}, child: InstaIcons.menuWhite),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
