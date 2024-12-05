import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:venta/Theme/ThemeService.dart';
import 'package:video_player/video_player.dart';

class ChewieVideoPlayer extends StatefulWidget {
  final video_url;
  const ChewieVideoPlayer({super.key, required this.video_url});

  @override
  _ChewieVideoPlayerState createState() => _ChewieVideoPlayerState();
}

class _ChewieVideoPlayerState extends State<ChewieVideoPlayer> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  bool _isVideoInitialized = false;

   @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.video_url)..initialize().then((_) {
        setState(() {
          _isVideoInitialized = true;
          _chewieController = ChewieController(
            videoPlayerController: _videoPlayerController!,
            aspectRatio: _videoPlayerController!.value.aspectRatio,
            autoPlay: false,
            looping: false,
            materialProgressColors: ChewieProgressColors(
              playedColor: primarycolor, 
              handleColor: Colors.white, 
              backgroundColor: Colors.grey, 
              bufferedColor: Colors.grey,
              
            ),
            hideControlsTimer: Duration(milliseconds: 600)
          );
        });
      });
  }
  @override
  void dispose() {
    _videoPlayerController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _isVideoInitialized ?Chewie(
                controller: _chewieController!,
              ):CircularProgressIndicator()
            
      ),
    );
  }
}
