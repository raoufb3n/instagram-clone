import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/AvatarListView.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/PostListView.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/PostWidget.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/customAppBar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        AvatarListView(),
        

      ],
    );
  }
}


