import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(child: Text('I Am Poor', style: TextStyle(fontSize: 30,color: Colors.white))),
        backgroundColor: const Color.fromARGB(221, 28, 59, 65),
      ),

      body:Container(
       child:  Center(child: Image.asset('assets/images/image.png')),
      ) 
    );
  }
}
