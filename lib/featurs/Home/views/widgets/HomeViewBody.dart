import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/AvatarListView.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/ProfileAvatar.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/customAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          CustomAppBar(),
          AvatarListView(),
        ],
      )
    ;
  }
}




