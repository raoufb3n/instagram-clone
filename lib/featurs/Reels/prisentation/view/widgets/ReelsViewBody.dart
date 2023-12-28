import 'dart:ui';

import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/featurs/Reels/prisentation/view/widgets/CtaSection.dart';
import 'package:instagram_clone/featurs/Reels/prisentation/view/widgets/DescWidget.dart';
import 'package:instagram_clone/featurs/Reels/prisentation/view/widgets/ReelPlaceHolder.dart';
import 'package:instagram_clone/featurs/Reels/prisentation/view/widgets/SongWidget.dart';
import 'package:instagram_clone/featurs/Reels/prisentation/view/widgets/UserInfo.dart';

class ReelsViewBody extends StatefulWidget {
  const ReelsViewBody({super.key});

  @override
  State<ReelsViewBody> createState() => _ReelsViewBodyState();
}

class _ReelsViewBodyState extends State<ReelsViewBody> {
  late CachedVideoPlayerController _controller;
  int opacity = 150;
  @override
  void initState() {
    super.initState();
    _initVideoPlayer();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ReelPlaceHolder(
          controller: _controller,
          onLongPress: () {
            setState(() {
              opacity = 0;
              _controller.pause();
            });
          },
          onLongPressEnd: (details) {
            setState(() {
              opacity = 150;
              _controller.play();
            });
          },
        ),
        Positioned(
          top: 0,
          child: Container(
            width: context.width,
            height: context.height / 5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(opacity, 0, 0, 0),
               const Color.fromARGB(0, 32, 32, 32),
              ],
            )),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: context.width,
            height: context.height / 5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(opacity, 0, 0, 0),
               const Color.fromARGB(0, 32, 32, 32),
              ],
            )),
          ),
        ),
        Positioned(
            right: 16,
            bottom: 24,
            child: AnimatedOpacity(
              opacity: opacity /150,
              duration:const Duration(milliseconds: 300),
              child:const CtaSection())),
        Positioned(
            left: 24,
            bottom: 32,
            child: AnimatedOpacity(
              opacity: opacity /150,
              duration:const Duration(milliseconds: 300),
              child: SizedBox(
                height: context.height / 7.8,
                child:const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UserInfo(),
                    DescWidget(),
                    SongWidget()
                  ],
                ),
              ),
            )),
      ],
    );
  }

  void _initVideoPlayer() async {
    _controller = CachedVideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    /// Initialize the video player
    await _controller.initialize().then((value) => setState(() {
          _controller.play();
          
          _controller.setLooping(true);
         
        }));
  }
}












