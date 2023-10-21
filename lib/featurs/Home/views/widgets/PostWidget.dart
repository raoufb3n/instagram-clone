import 'package:flutter/material.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/PostCta.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/PostInfo.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/commentWidget.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/postDetails.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostInfo(),
      
    
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
    PostCtas(),
    PostDetails(),
    const SizedBox(
      height: 8,
    ),
    CommentsWidget()
    ],
    );
  }
}