import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is Fun!'),
        ),

        body: ListView(
          scrollDirection: Axis.horizontal,
          addAutomaticKeepAlives: false,
          children: [
            Container(
              color: Colors.blue,
              width: 500,
            ),
            Container(
              color: const Color.fromARGB(255, 114, 33, 243),
              width: 500,
            ),
            Container(
              color: const Color.fromARGB(255, 243, 128, 33),
              width: 500,
            ),
          ],
        ),
      ),
    );
  }
}
