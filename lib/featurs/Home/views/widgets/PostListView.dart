import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/PostWidget.dart';

class PostsListView extends StatelessWidget {
  const  PostsListView({
    super.key,
  });
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics:const NeverScrollableScrollPhysics(),
        itemCount: 15,
        itemBuilder: (context, indec) {
          return const Padding(
            padding:  EdgeInsets.only(bottom: 12),
            child: PostWidget(),
          );
        });
  }
}
