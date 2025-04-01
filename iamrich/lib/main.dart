import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'I Am Rich',
            style: TextStyle(
              fontSize: 40,
              color: const Color.fromARGB(151, 30, 52, 58),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(221, 3, 255, 79),
      ),

      body: Center(child: Image.asset('assets/images/image.png')),
    );
  }
}
