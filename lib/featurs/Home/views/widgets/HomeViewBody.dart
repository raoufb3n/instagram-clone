import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/AvatarListView.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/PostWidget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          backgroundColor: ColorsStyles.white,
          floating: true,
          leading: Image.asset('assets/images/logo.png'),
          leadingWidth: MediaQuery.of(context).size.width * .3,
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
