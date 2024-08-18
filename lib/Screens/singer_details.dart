import 'package:flutter/material.dart';
import '../models/singer.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

class SingersDetailes extends StatefulWidget {
  SingersDetailes({super.key, required this.Item});

  final Singer Item;

  @override
  State<SingersDetailes> createState() => _SingersDetailesState();
}

class _SingersDetailesState extends State<SingersDetailes>
    with SingleTickerProviderStateMixin {
  final AudioPlayer _audioPlayer = AudioPlayer();
  int _currentlyPlayingIndex = -1;
  late AnimationController _animationController;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();

    _audioPlayer.onDurationChanged.listen((duration) {
      setState(() {
        _duration = duration;
      });
    });

    _audioPlayer.onPositionChanged.listen((position) {
      setState(() {
        _position = position;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  void _playPauseAudio(int index, String songPath) async {
    if (_currentlyPlayingIndex == index) {
      await _audioPlayer.pause();
      setState(() {
        _currentlyPlayingIndex = -1;
      });
    } else {
      try {
        await _audioPlayer.play(AssetSource(songPath));
        setState(() {
          _currentlyPlayingIndex = index;
        });
      } catch (e) {
        print("Error playing audio: $e");
      }
    }
  }

  void _seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    _audioPlayer.seek(newDuration);
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          widget.Item.name.toString(),
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'SplashFont'),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.Item.imageURL.toString(),
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.Item.name.toString(),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  textAlign: TextAlign.justify,
                  widget.Item.description.toString(),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'آهنگ ها',
                style: TextStyle(fontSize: 20, fontFamily: 'SplashFont'),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.Item.musicsPath.length,
              itemBuilder: (context, index) {
                String songPath = 'audios/${widget.Item.musicsPath[index]}.mp3';
                bool isPlaying = _currentlyPlayingIndex == index;

                return Card(
                  color: Colors.teal.shade700,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'آهنگ ${index + 1}',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            color: Colors.white,
                            isPlaying ? Icons.pause : Icons.play_arrow,
                          ),
                          onPressed: () => _playPauseAudio(index, songPath),
                        ),
                        leading: Icon(
                          Icons.music_note,
                          color: Colors.white,
                        ),
                      ),
                      if (isPlaying)
                        Column(
                          children: [
                            AnimatedBuilder(
                              animation: _animationController,
                              builder: (context, child) {
                                return CustomPaint(
                                  painter:
                                      WavePainter(_animationController.value),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _formatDuration(_position),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    _formatDuration(_duration),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Slider(
                              activeColor: Colors.amberAccent,
                              inactiveColor:
                                  Colors.amberAccent.withOpacity(0.5),
                              min: 0.0,
                              max: _duration.inSeconds.toDouble(),
                              value: _position.inSeconds.toDouble(),
                              onChanged: (value) {
                                setState(() {
                                  _seekToSecond(value.toInt());
                                });
                              },
                            ),
                          ],
                        ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final double waveValue;
  final Paint wavePaint = Paint()
    ..color = Colors.amberAccent
    ..style = PaintingStyle.fill;

  WavePainter(this.waveValue);

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final double waveLength = size.width;
    final double waveAmplitude = 20.0;

    for (double x = 0; x <= size.width; x++) {
      double y =
          waveAmplitude * sin((x / waveLength) * 2 * pi + (waveValue * 2 * pi));
      path.lineTo(x, size.height / 2 - y);
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, wavePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
