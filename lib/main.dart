import 'package:flutter/material.dart';

import './questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override // decorator provided by Flutter (for code style and we overriding it with our implementation)

  int _titleIndex = 0;

  void printClick() {
    // setState(() => {_titleIndex += 1});
    print('onButton clicked');
  }

  List<String> titles = [
    'Title 1',
    'Title 2',
    'Title 3',
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // widget material ui
        appBar: AppBar(
          title: Text("My First App"),
        ), // builds appBar
        body: Center(
          child: Column(
            children: [
              Questions(titles[_titleIndex]),
              ElevatedButton(
                  onPressed: printClick, child: Text('ElevatedButton')),
              ElevatedButton(
                  onPressed: printClick, child: Text('ElevatedButton'))
            ],
          ),
        ), // builds body
      ),
    );
  }
}
