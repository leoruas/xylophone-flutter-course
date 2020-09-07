import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 'note1.wav'),
                buildKey(Colors.orange, 'note2.wav'),
                buildKey(Colors.yellow, 'note3.wav'),
                buildKey(Colors.green, 'note4.wav'),
                buildKey(Colors.blue, 'note5.wav'),
                buildKey(Colors.indigo, 'note6.wav'),
                buildKey(Colors.purple, 'note7.wav')
              ]),
        ),
      ),
    );
  }

  void playSound(String sound) {
    final player = AudioCache();
    player.play(sound);
  }

  Expanded buildKey(Color color, String sound) {
    return Expanded(
      child: FlatButton(
        child: null,
        onPressed: () {
          playSound(sound);
        },
        color: color,
      ),
    );
  }
}
