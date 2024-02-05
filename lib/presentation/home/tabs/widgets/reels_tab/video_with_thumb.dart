// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:no_reel/presentation/widgets/network_image.dart';
import 'package:video_player/video_player.dart';

class VideoWithThumb extends StatefulWidget {
  final String vUrl;
  final String tUrl;
  const VideoWithThumb({
    Key? key,
    required this.vUrl,
    required this.tUrl,
  }) : super(key: key);

  @override
  _VideoThumbState createState() => _VideoThumbState();
}

class _VideoThumbState extends State<VideoWithThumb> {
  String VIDEO_ONE =
      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";

  VideoPlayerController? videoPlayerController1;

  ChewieController? _chewieController1;

  @override
  void initState() {
    // _generateThumbnail();

    initializePlayer();
    super.initState();
  }

  @override
  void dispose() {
    // videoPlayerController1.dispose();

    // _chewieController1.dispose();

    super.dispose();
  }

  Future<void> initializePlayer() async {
    if (mounted) {
      videoPlayerController1 = VideoPlayerController.networkUrl(
        Uri.parse(widget.vUrl),
      );

      await videoPlayerController1!.initialize();
      _createChewieController();
      setState(() {});
    }
  }

  _createChewieController() {
    _chewieController1 = ChewieController(
      videoPlayerController: videoPlayerController1!,
      // aspectRatio: ,
      autoPlay: true,
      looping: true,
      allowFullScreen: false,
      allowedScreenSleep: false,
      autoInitialize: true,
      hideControlsTimer: const Duration(microseconds: 1),
      showControls: false,
      showControlsOnInitialize: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Center(
            child: _chewieController1 != null &&
                    _chewieController1!
                        .videoPlayerController.value.isInitialized &&
                    _chewieController1!.isPlaying
                ? Chewie(
                    controller: _chewieController1!,
                  )
                : Stack(
                    children: [
                      Container(
                          height: size.height,
                          width: size.width,
                          child: AppCachedNetworkImage(
                            imageUrl: widget.tUrl,
                            height: size.height,
                            width: MediaQuery.of(context).size.width,
                          )
                          //  Image.network(
                          //   storiesImageUrl,
                          // height: size.height,
                          // width: MediaQuery.of(context).size.width,
                          // ),
                          ),
                      _chewieController1 != null
                          ? Align(
                              alignment: Alignment.center,
                              child: ClipOval(
                                child: Material(
                                  color: Colors.white, // Button color
                                  child: InkWell(
                                    splashColor: Colors.white, // Splash color
                                    onTap: () {
                                      _chewieController1!.play();
                                      setState(() {});
                                    },
                                    child: const SizedBox(
                                        width: 56,
                                        height: 56,
                                        child: Icon(Icons.play_arrow)),
                                  ),
                                ),
                              ),
                            )
                          : const Align(
                              alignment: Alignment.center,
                              child: CircularProgressIndicator())
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
