import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
//    void playSound(int playNumber) {
//      final player = AudioCache();
//      player.play('note$playNumber.wav');
//    }

  Expanded musicColumn(Color colorName, int number) {
    return Expanded(
      child: FlatButton(
          color: colorName,
          onPressed: () {
            final player = AudioCache();
            player.play('note$number.wav');
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              musicColumn(Colors.red, 1),
              musicColumn(Colors.amber, 2),
              musicColumn(Colors.indigo, 3),
              musicColumn(Colors.teal, 4),
              musicColumn(Colors.blue, 5),
              musicColumn(Colors.orange, 6),
              musicColumn(Colors.green, 7),
            ],
          ),
        ),
      ),
    );
  }
}
