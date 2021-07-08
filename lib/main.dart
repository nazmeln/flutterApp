import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

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

  List<String> titles = [
    'Question 1 HDjhkdsfkhjfs?',
    'Title 2',
    'Title 3',
  ];

  var questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': ['red', 'green', 'grey', 'blue']
    },
    {
      'questionText': 'Who is better?',
      'answers': ['Cat', 'Dog']
    },
    {
      'questionText': 'What is your favourite outfit?',
      'answers': ['trousers', 'tie', 'pants', 't-shirt']
    },
  ];

  void _updateState() {
    setState(() => {_titleIndex += 1});
    print(_titleIndex);
  }

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
              Questions(questions[_titleIndex]['questionText']),
              ...(questions[_titleIndex]['answers'] as List<String>)
                  .map((value) => Answer(_updateState, value))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
