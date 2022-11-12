import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Video6 extends StatefulWidget {
  const Video6({Key? key}) : super(key: key);

  @override
  State<Video6> createState() => _Video1State();
}

class _Video1State extends State<Video6> {
  final List<String> _videoUrlList = ['https://youtu.be/j8sqQQOxRJE'];

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
              title: Text(
                ' Video Hewan Yang Mengandung Listrik',
                style: TextStyle(fontSize: 18),
              ),
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
