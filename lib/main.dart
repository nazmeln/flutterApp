import 'package:flutter/material.dart';
import 'package:flutter_my_app/quiz.dart';

import './result.dart';

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

  final questions = const [
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

  int _titleIndex = 0;

  List<String> titles = [
    'Question 1 HDjhkdsfkhjfs?',
    'Title 2',
    'Title 3',
  ];

  void _updateState() {
    setState(() => {_titleIndex += 1});

    if (_titleIndex < questions.length) {
      print('here we are');
    }
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
          child: _titleIndex < questions.length
              ? Quiz(
                  answerQuestion: _updateState,
                  questionIndex: _titleIndex,
                  questions: questions,
                )
              : Result(),
        ),
      ),
    );
  }
}
