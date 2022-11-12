import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video2 extends StatefulWidget {
  const Video2({Key? key}) : super(key: key);

  @override
  State<Video2> createState() => _Video2State();
}

class _Video2State extends State<Video2> {
  final List<String> _videoUrlList = ['https://youtu.be/S8xa2KOpxhY'];

  bool showAppBar = true;

  @override
  Widget build(BuildContext context) {
    final _ytController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(_videoUrlList[0])!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: true,
        captionLanguage: 'en',
      ),
    );
    bool _isPlaying = false;

    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              title: Text('Video Hukum Coulumb'),
              backgroundColor: const Color.fromARGB(255, 57, 142, 153),
            )
          : null,
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _ytController
            ..addListener(() {
              if (_ytController.value.isPlaying) {
                setState(() {
                  _isPlaying = true;
                });
              } else {
                _isPlaying = false;
              }
            }),
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.lightBlueAccent,
          bottomActions: [
            CurrentPosition(),
            ProgressBar(isExpanded: true),
            FullScreenButton(),
          ],
          onEnded: (YoutubeMetaData _md) {
            ///---------------------------   ISSUE NO. 2
            _ytController.reset();
            // _ytController.seekTo(const Duration(seconds: 1));
            // _ytController.pause();
            _md.videoId;
            print(_md.title);
          },
        ),
        builder: (context, player) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // some widgets
              player,
              //some other widgets
            ],
          );
        },
        onEnterFullScreen: () {
          setState(() {
            showAppBar = false;
          });
        },
        onExitFullScreen: () {
          setState(() {
            showAppBar = true;
          });
        },
      ),
    );
  }
}
