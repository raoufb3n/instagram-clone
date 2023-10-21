import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/colors.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/AvatarListView.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/PostListView.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  ScrollController _controller = ScrollController();
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
            AvatarListView(),
            const SizedBox(
              height: 8,
            )
          ],
        )),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((context, index) => PostsListView()))
      ],
    );
  }
}
