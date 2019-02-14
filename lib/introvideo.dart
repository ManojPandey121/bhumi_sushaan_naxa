import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'pages/home.dart';

bool firsttime = true;

class IntroVideo extends StatefulWidget {
  @override
  _IntroVideoState createState() => _IntroVideoState();
}

class _IntroVideoState extends State<IntroVideo> {
  VideoPlayerController _controller;
  bool _isPlaying = true;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("static/video/introvideo.mp4")
      ..addListener(() {
        final bool isPlaying = _controller.value.isPlaying;
        if (isPlaying != _isPlaying) {
          setState(() {
            _isPlaying = isPlaying;
            _controller.play;
          });
        }
      })
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    if (firsttime == true) {
      return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: _controller.value.isPlaying
                ? _controller.pause
                : _controller.play,
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
          body: new Stack(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.topCenter,
                    child: _controller.value.initialized
                        ? AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          )
                        : Container(),
                  )
                ],
              ),
              new IconButton(
                icon: new Icon(Icons.close),
                alignment: Alignment.topRight,
                onPressed: () {
                  setState(() {
                    _controller.pause;
                    firsttime = false;
                  });
                },
              )
            ],
          ));
    } else {
      return new HomePage();
    }
  }
}
