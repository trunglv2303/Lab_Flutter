import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:<Widget> [
              Container(width: double.infinity, height: 100,
                child: Text('Container 1'), color: Colors.cyan),
              Container(width: 100, height: 100,
                child: Text('Container 2'),
                color: const Color.fromARGB(255, 255, 0, 21),
              ),

              Container(width: 100, height: 100,
                child: Text('Container 3'),
                color: const Color.fromARGB(255, 120, 2, 255),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
