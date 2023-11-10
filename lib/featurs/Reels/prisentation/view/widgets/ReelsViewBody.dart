import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:instagram_clone/core/utils/icons.dart';
import 'package:instagram_clone/core/utils/styles.dart';
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
            width: context.width,
            height: context.height / 5,
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
            width: context.width,
            height: context.height / 5,
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
            right: 16,
            bottom: 24,
            child: Column(
              children: [
                ReelCtaItem(
                  icon: InstaIcons.likeWhite,
                  label: 'Like',
                ),
                ReelCtaItem(
                  icon: InstaIcons.commentWhite,
                  label: 'Comment',
                ),
                ReelCtaItem(
                  icon: InstaIcons.sendWhite,
                  label: 'Share',
                ),
                IconButton(onPressed: () {}, icon: InstaIcons.menuWhite)
              ],
            )),
        Positioned(
            left: 24,
            bottom: 64,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                      'assets/images/nigel-hoare-_r3nclhPoPM-unsplash.jpg'),
                ),
                Text(
                  'abderraouf',
                  style: Styles.titleMeduim14.copyWith(color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.white, width: 0.5),
                  ),
                  child: Text(
                    'Follow',
                    style: Styles.titleMeduim14
                        .copyWith(color: Colors.white, fontSize: 16),
                  ),
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
    await _controller.initialize().then((value) => setState(() {
          _controller.play();
          _controller.setLooping(true);
        }));
  }
}

class ReelCtaItem extends StatelessWidget {
  const ReelCtaItem({
    super.key,
    required this.icon,
    required this.label,
  });
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: icon,
          color: Colors.white,
          iconSize: 30,
        ),
        Text(
          label,
          style: Styles.titleMeduim14.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 12,
        )
      ],
    );
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
