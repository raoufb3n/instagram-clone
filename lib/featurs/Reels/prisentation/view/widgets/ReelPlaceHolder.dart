

import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:video_player/video_player.dart';

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
      width: context.width,
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
