import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 211, 67, 0),
          title: Center(
            child: Text('Dice', style: TextStyle(color: Colors.amberAccent)),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
var rightDiceNumber=1;
void changeDiceFace(){
    setState(() {
                    leftDiceNumber = Random().nextInt(6)+1; 
                                        rightDiceNumber = Random().nextInt(6)+1; // Random từ 1 đến 6
// Random từ 1 đến 6
                  });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                changeDiceFace();
                  print('Helloword print $leftDiceNumber');
                },
                child: Image(
                  image: AssetImage('assets/images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                               changeDiceFace();
 
                  print('Hello world priltn 2');
                },
                child: Image(image: AssetImage('assets/images/dice$rightDiceNumber.png')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
