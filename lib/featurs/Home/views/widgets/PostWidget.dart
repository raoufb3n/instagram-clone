import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/PostCta.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/PostInfo.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/commentWidget.dart';
import 'package:instagram_clone/featurs/Home/views/widgets/postWidgets/postDetails.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    super.key,
  });

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  double opacity = 0;
  double scale = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostInfo(),
        const SizedBox(
          height: 4,
        ),
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              opacity = 1;
              scale = 1;
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  opacity = 0;
                  scale = 0;
                });
              });
            });
          },
          child: Stack(
            children: [
              SizedBox(
                height: context.height * .6,
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 8 / 8,
                  child: Image.asset(
                    'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: context.height * .6,
                width: double.infinity,
                child: AnimatedOpacity(
                  curve: Curves.linear,
                  opacity: opacity,
                  duration: const Duration(seconds: 1),
                  child: Stack(
                    children: [
                      Container(
                        height: context.height * .6,
                        color: Colors.black.withOpacity(.2),
                      ),
                      Center(
                        child: AnimatedScale(
                            curve: Curves.bounceIn,
                            duration: Duration(seconds: 1),
                            scale: scale,
                            child: InstaIcons.bigHeart),
                      )
                    ],
                  ),
                ),
              ),
            ],
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
