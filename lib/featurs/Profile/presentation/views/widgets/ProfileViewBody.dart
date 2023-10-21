import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/core/utils/styles.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/customAppBar.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/ProfileInfo.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/ProfileStats.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        ProfileInfo(),
      ],
    );
  }
}



