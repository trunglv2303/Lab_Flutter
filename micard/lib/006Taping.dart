import 'package:flutter/material.dart';

class MyWidget1 extends StatelessWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 15, 207, 95),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/image.png'),
              ),
              Text(
                'LE VAN TRUNG',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Deve',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 12,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone, color: Colors.white),
                      SizedBox(width: 10.0),
                      Text(
                        '+84 0374023927',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Pacifico',
                          
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Icon(Icons.email, color: Colors.white),
                      SizedBox(width: 10.0),
                      Text(
                        'trunglv.22itb@vku.udn.vn',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
