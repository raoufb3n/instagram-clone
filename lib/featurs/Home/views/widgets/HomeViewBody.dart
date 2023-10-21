import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/utils/icons.dart';

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
              Stack(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
