import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/core/utils/styles.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/AvatarListView.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/ProfileAvatar.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/customAppBar.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/postAvatar.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/postDetails.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        AvatarListView(),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PostAvatar(
                    isStory: true,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'abderraouf',
                        style: Styles.displayBold12,
                      ),
                      Text(
                        'Batna(Algeria)',
                        style: Styles.titleRegular12,
                      )
                    ],
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(onPressed: () {}, icon: InstaIcons.plus),
                  ))
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 390,
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 2 / 2,
            child: Image.asset(
              'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: InstaIcons.like),
              IconButton(onPressed: () {}, icon: InstaIcons.comment),
              IconButton(onPressed: () {}, icon: InstaIcons.send),
              const Spacer(),
              IconButton(onPressed: () {}, icon: InstaIcons.save),
            ],
          ),
        ),
        PostDetails()

      ],
    );
  }
}




