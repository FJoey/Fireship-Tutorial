import 'package:flutter/material.dart';

String img = 'https://www.absglobal.com/uk/wp-content/uploads/sites/14/2023/05/Skaill-Evelix-X530-7876.jpg?resize=1536,1024';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: new HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Flutter is Fun!'),
      ),

      body: IconButton(
        icon: Hero(
          tag: img,
          child: Image.network(
            img,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AboutScreen(),
              ),
            );
          },
        )
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Hero(
        tag: img,
        child: Image.network(img),
      )
    );
  }
}