import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("News", style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Text("Hello, World!")
        )
      ),
    );
  }
}
