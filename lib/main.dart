import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.setAsset('assets/audios/note$noteNumber.wav');
    player.play();
  }

  Expanded buildKey({required int soundNumber, required Color buttonColor}) {
    return Expanded(
      child: Container(
        color: buttonColor,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: const Text(""),
        ),
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
            children: [
              buildKey(soundNumber: 1, buttonColor: Colors.red),
              buildKey(soundNumber: 2, buttonColor: Colors.orange),
              buildKey(soundNumber: 3, buttonColor: Colors.yellow),
              buildKey(soundNumber: 4, buttonColor: Colors.green),
              buildKey(soundNumber: 5, buttonColor: Colors.blue),
              buildKey(soundNumber: 6, buttonColor: Colors.indigo),
              buildKey(soundNumber: 7, buttonColor: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
