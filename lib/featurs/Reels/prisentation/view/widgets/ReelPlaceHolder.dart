import 'package:flutter/material.dart';
import 'package:instagram_clone/core/extensions/extensions.dart';
import 'package:cached_video_player/cached_video_player.dart';

class ReelPlaceHolder extends StatelessWidget {
  const ReelPlaceHolder({
    super.key,
    required CachedVideoPlayerController controller,
    this.onLongPress,
    this.onLongPressEnd,
  }) : _controller = controller;

  final CachedVideoPlayerController _controller;
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
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: 2 / 4,
                child: CachedVideoPlayer(_controller),
              )
            : Container(
                width: context.width,
                height: context.height,
                color: Colors.grey,
                child:const SizedBox(
                    height: 20,
                    width: 20,
                    
                        child: Center(child: CircularProgressIndicator.adaptive())),
              ),
      ),
    );
  }
}
