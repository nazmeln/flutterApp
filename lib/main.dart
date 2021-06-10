import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override // decorator provided by Flutter (for code style and we overriding it with our implementation)
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // widget material ui
        appBar: AppBar(
          title: Text("My First App"),
        ), // builds appBar
        body: Text('This is my default Text'), // builds body
      ),
    );
  }
}
