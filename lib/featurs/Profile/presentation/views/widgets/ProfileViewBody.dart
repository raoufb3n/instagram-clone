import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/CustomAppBar.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/ProfileInfo.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/ProfilePostsGrid.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/ProfileSwapWidget.dart';
import 'package:instagram_clone/featurs/Profile/presentation/views/widgets/customProfileButton.dart';

class ProfileViewBody extends StatelessWidget {
  ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBarProfile(),
        const SizedBox(
          height: 16,
        ),
        ProfileInfo(),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomProfileButton(
              label: 'Edit Profile',
              isFoolow: true,
            ),
            CustomProfileButton(
              label: 'Message',
              isFoolow: true,
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: ColorsStyles.gry.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(6)),
              child: IconButton(
                  iconSize: 24,
                  color: ColorsStyles.gry,
                  onPressed: () {},
                  icon: InstaIcons.user),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(child: ProfileSwapWidget()),
        
      ],
    );
  }
}

