import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playsound(int numbersound) {
    final player = AudioPlayer();
    player.play(AssetSource('note$numbersound.wav')); // Sử dụng AssetSource
  }

  Expanded buildkey(int number,Color color) {
   return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(number);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
        ),
        child: Text('clickme'),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            buildkey(1,Colors.red),
            buildkey(2,const Color.fromARGB(255, 227, 252, 1)),
            buildkey(3,const Color.fromARGB(234, 226, 0, 124)),
            buildkey(4,const Color.fromARGB(255, 51, 255, 0)),
            buildkey(5,const Color.fromARGB(255, 25, 175, 11)),
            buildkey(6,const Color.fromARGB(255, 250, 0, 154)),

            ],
          ),
        ),
      ),
    );
  }
}
