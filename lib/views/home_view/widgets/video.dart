import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  final String videoUrl;
  final int snappedPagIndex;
  final int currentIndex;

  const Video({
    super.key,
    required this.videoUrl,
    required this.snappedPagIndex,
    required this.currentIndex,
  });

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late VideoPlayerController _videoPlayerController;

  late Future _initializeVideoPlayer;

  bool _isVideoPlaying = true;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.asset(widget.videoUrl);
    _initializeVideoPlayer = _videoPlayerController.initialize();
    _videoPlayerController.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  void _playPauseVideo() {
    _isVideoPlaying
        ? _videoPlayerController.pause()
        : _videoPlayerController.play();

    setState(() {
      _isVideoPlaying = !_isVideoPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    (widget.snappedPagIndex == widget.currentIndex && _isVideoPlaying)
        ? _videoPlayerController.play()
        : _videoPlayerController.pause();
    return Center(
      child: Container(
        color: Colors.black,
        child: FutureBuilder(
          future: _initializeVideoPlayer,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return GestureDetector(
                onTap: () {
                  _playPauseVideo();
                },
                child: Stack(children: [
                  VideoPlayer(_videoPlayerController),
                  Center(
                    child: IconButton(
                        onPressed: () {
                          _playPauseVideo();
                        },
                        icon: Icon(
                          Icons.play_arrow_rounded,
                          color: _isVideoPlaying
                              ? Colors.transparent
                              : Colors.white.withOpacity(.5),
                          size: 60,
                        )),
                  )
                ]),
              );
            } else {
              return Center(
                child: Lottie.asset('assets/images/TikTokLoadingAnimation.json',
                    width: 60, height: 60, fit: BoxFit.contain),
              );
            }
          },
        ),
      ),
    );
  }
}
