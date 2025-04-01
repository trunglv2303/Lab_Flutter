import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1; // Tạo số ngẫu nhiên từ 1 đến 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: TextButton(
          onPressed: changeBall,
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
