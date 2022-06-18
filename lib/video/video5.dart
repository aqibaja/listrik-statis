import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video5 extends StatefulWidget {
  const Video5({Key? key}) : super(key: key);

  @override
  State<Video5> createState() => _Video1State();
}

class _Video1State extends State<Video5> {
  final List<String> _videoUrlList = [
    'https://youtube.com/watch?v=DphGLqf0Cqc',
  ];

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
              title: Text('Video Kelistrikan Pada Sistem Saraf '),
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
