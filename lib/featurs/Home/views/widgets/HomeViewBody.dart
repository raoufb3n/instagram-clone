import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/core/utils/styles.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/AvatarListView.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/PostWidget.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/ProfileAvatar.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/customAppBar.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/PostCta.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/PostInfo.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/commentWidget.dart';
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
        PostWidget()

      ],
    );
  }
}






