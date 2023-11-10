import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:video_player/video_player.dart';

class ReelsViewBody extends StatefulWidget {
  const ReelsViewBody({super.key});

  @override
  State<ReelsViewBody> createState() => _ReelsViewBodyState();
}

class _ReelsViewBodyState extends State<ReelsViewBody> {
  late VideoPlayerController _controller;
  int opacity = 150;
  @override
  void initState() {
    super.initState();
    _initVideoPlayer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
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
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Color.fromARGB(opacity, 0, 0, 0),
                Color.fromARGB(0, 32, 32, 32),
              ],
            )),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                Color.fromARGB(opacity, 0, 0, 0),
                Color.fromARGB(0, 32, 32, 32),
              ],
            )),
          ),
        ),
        Positioned(
            right: 24,
            bottom: 30,
            child: Column(
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: InstaIcons.like,
                      color: Colors.white,
                      iconSize: 30,
                    ),
                  ],
                )
              ],
            ))
      ],
    );
  }

  void _initVideoPlayer() async {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'));

    /// Initialize the video player
    await _controller.initialize().then((value) => setState(() {}));
  }
}

class ReelPlaceHolder extends StatelessWidget {
  const ReelPlaceHolder({
    super.key,
    required VideoPlayerController controller,
    this.onLongPress,
    this.onLongPressEnd,
  }) : _controller = controller;

  final VideoPlayerController _controller;
  final Function()? onLongPress;
  final Function(LongPressEndDetails)? onLongPressEnd;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onLongPressEnd: onLongPressEnd,
        onLongPress: onLongPress,
        onTap: () => _controller.value.isPlaying
            ? _controller.pause()
            : _controller.play(),
        child: AspectRatio(
          aspectRatio: 2 / 4,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
