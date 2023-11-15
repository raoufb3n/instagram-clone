import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/core/utils/styles.dart';

class StoryViewBody extends StatefulWidget {
  const StoryViewBody({super.key});

  @override
  State<StoryViewBody> createState() => _StoryViewBodyState();
}

class _StoryViewBodyState extends State<StoryViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation =
        Tween<double>(begin: 230, end: 1.8).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      width: context.width,
      child: Stack(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
            ),
            height: context.height / 1.15,
            width: context.width,
            child: AspectRatio(
                aspectRatio: 2 / 4,
                child: Image.asset(
                  'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
                  fit: BoxFit.fill,
                )),
          ),
          Positioned(
            top: 0,
            child: Container(
              width: context.width,
              height: context.height / 5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Color.fromARGB(100, 0, 0, 0),
                  Color.fromARGB(0, 32, 32, 32),
                ],
              )),
            ),
          ),
          Positioned(
            top: 16,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: context.width / 1.05,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: SlideTransition(
                        position: Tween<Offset>(
                                begin: Offset(-1, 0), end: Offset.zero)
                            .animate(_animationController),
                        child: Container(
                          alignment: Alignment.center,
                          width: context.width / 1.05,
                          height: 3,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(
                            'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Abderraouf',
                        style: Styles.titleMeduim13
                            .copyWith(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        '10min',
                        style: Styles.titleMeduim14
                            .copyWith(color: Colors.grey[300]),
                      ),
                      const Spacer(),
                      Transform.rotate(
                        angle: pi / 2,
                        child: GestureDetector(
                            onTap: () {}, child: InstaIcons.menuWhite),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 12,
              width: context.width,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    width: context.width / 1.35,
                    child: TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 12),
                        hintText: 'Send message',
                        hintStyle:
                            Styles.titleMeduim14.copyWith(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.85)),
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: InstaIcons.likeWhite),
                  IconButton(onPressed: () {}, icon: InstaIcons.sendWhite),
                ],
              ))
        ],
      ),
    );
  }
}
