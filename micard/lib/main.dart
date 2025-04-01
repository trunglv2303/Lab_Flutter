import 'package:flutter/material.dart';
import 'package:micard/006Taping.dart';
import 'package:micard/columrow.dart';

void main() {
  runApp( MyWidget1());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nDonut = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red, title: Text('demo')),
        backgroundColor: Colors.white,
        body: Center(child: Text('Number of donuts eaten: $nDonut')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              nDonut++; // UI sẽ cập nhật
            });
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
