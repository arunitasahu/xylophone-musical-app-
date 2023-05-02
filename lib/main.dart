
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber)
  {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
  Expanded buildKey({required Color color , required int soundNumber}) {
    return Expanded(
      child: FlatButton(
          color: color,
          child: Text(''),
          onPressed: () {
            playSound(soundNumber);
          },
      ),
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
              buildKey(color: Colors.red , soundNumber: 1),
              buildKey(color: Colors.black , soundNumber: 2),
              buildKey(color: Colors.white, soundNumber: 3),
              buildKey(color: Colors.pinkAccent , soundNumber: 4),
              buildKey(color: Colors.purpleAccent , soundNumber: 5),
              buildKey(color: Colors.yellow, soundNumber: 6),
              buildKey(color: Colors.lightBlueAccent , soundNumber: 7),
            ],
          ),

        ),
      ),
    );
  }
}
