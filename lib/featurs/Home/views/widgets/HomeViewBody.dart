import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/core/utils/Theme/colors.dart';
import 'package:instagram_clone/core/utils/Theme/icons.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/AvatarListView.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/PostWidget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
     
      slivers: [
        SliverAppBar(
          backgroundColor: ColorsStyles.white,
          floating: true,
          leading: Image.asset('assets/images/logo.png'),
          leadingWidth: context.width * .3,
          actions: [
            IconButton(onPressed: () {}, icon: InstaIcons.like),
            IconButton(onPressed: () {}, icon: InstaIcons.chat)
          ],
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            
            const AvatarListView(),
            const SizedBox(
              height: 8,
            )
          ],
        )),
        SliverList.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return const PostWidget();
          },
        )
      ],
    );
  }
}
