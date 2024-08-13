import 'package:flutter/material.dart';
import '../models/singer.dart';
import 'package:audioplayers/audioplayers.dart';

class SingersDetailes extends StatefulWidget {
  SingersDetailes({super.key, required this.Item});

  final Singer Item;

  @override
  State<SingersDetailes> createState() => _SingersDetailesState();
}

class _SingersDetailesState extends State<SingersDetailes> {
  final AudioPlayer _audioPlayer = AudioPlayer();

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
              child: Text(widget.Item.description.toString()),
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
              itemCount: widget.Item.musicsPath.length, // مثلا ۱۰ آهنگ اول
              itemBuilder: (context, index) {
                String songPath = 'audios/${widget.Item.musicsPath[index]}.mp3';
                return Card(
                  color: Colors.teal.shade700,
                  child: ListTile(
                    title: Text('آهنگ ${index + 1}'),
                    trailing: IconButton(
                        icon: Icon(Icons.play_arrow),
                        onPressed: () async {
                          try {
                            await _audioPlayer.play(AssetSource(songPath));
                          } catch (e) {
                            print("Error playing audio: $e");
                          }
                        }),
                    leading: IconButton(
                      icon: Icon(Icons.pause),
                      onPressed: () async {
                        await _audioPlayer.pause();
                      },
                    ),
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
