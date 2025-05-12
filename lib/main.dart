import 'package:flutter/material.dart';

void main(){

  runApp( MyApp() );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.green,
        title: const Text('Flutter is Fun!'),
        ),

        body: Center(
          child: Container(
            child: const Text('Hi Mom'),
            margin: const EdgeInsets.all(100),
            padding: const EdgeInsets.all(10),
            color: Colors.red,
            height: 100,
            width: 100,
          ),
        )
      ),
    );
  }
}