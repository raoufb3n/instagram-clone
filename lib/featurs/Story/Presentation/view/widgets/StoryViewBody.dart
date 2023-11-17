import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/core/utils/Theme/icons.dart';
import 'package:instagram_clone/core/utils/Theme/styles.dart';


class StoryViewBody extends StatefulWidget {
  const StoryViewBody({super.key});

  @override
  State<StoryViewBody> createState() => _StoryViewBodyState();
}

class _StoryViewBodyState extends State<StoryViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double opacity = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {
        if (_animationController.status == AnimationStatus.completed) {
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      width: context.width,
      child: Stack(
        children: [
          GestureDetector(
            onLongPress: () {
              setState(() {
                opacity = 0;
              });
              _animationController.stop();
            },
            onLongPressEnd: (details) {
              setState(() {
                opacity = 1;
              });

              _animationController.forward();
            },
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
              ),
              height: context.height / 1.14,
              width: context.width,
              child: AspectRatio(
                  aspectRatio: 2 / 4,
                  child: Image.asset(
                    'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg',
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Positioned(
            top: 0,
            child: AnimatedOpacity(
              opacity: opacity,
              duration: Duration(milliseconds: 300),
              child: Container(
                width: context.width,
                height: context.height / 5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: const [
                    Color.fromARGB(100, 0, 0, 0),
                    Color.fromARGB(0, 32, 32, 32),
                  ],
                )),
              ),
            ),
          ),
          Positioned(
            top: 16,
            right: 0,
            left: 0,
            child: Stack(
              children: [
                Positioned(
                  right: 16,
                  left: 16,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(100)),
                    padding: const EdgeInsets.only(left: 16),
                    alignment: Alignment.center,
                    width: context.width / 1.05,
                    height: 3,
                  ),
                ),
                AnimatedOpacity(
                  opacity: opacity,
                  duration: Duration(milliseconds: 300),
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
              ],
            ),
          ),
          Positioned(
              bottom: 12,
              width: context.width,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: Duration(milliseconds: 300),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      width: context.width / 1.35,
                      height: context.height / 20,
                      child: TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 12),
                          hintText: 'Send message',
                          hintStyle: Styles.titleMeduim14
                              .copyWith(color: Colors.white),
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
                ),
              ))
        ],
      ),
    );
  }
}
