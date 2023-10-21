import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/ProfileAvatar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/logo.png',
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: InstaIcons.like),
                  IconButton(onPressed: () {}, icon: InstaIcons.chat),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 70,
            child: Row(
              children: [
                ProfileAvatar(isUser: true),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return ProfileAvatar(isUser: false);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
