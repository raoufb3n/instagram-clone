import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/ProfileAvatar.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/customAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 120,
            child: Row(
              children: [
                ProfileAvatar(isUser: true),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ProfileAvatar(isUser: false),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ;
  }
}


