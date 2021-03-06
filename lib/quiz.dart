import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    this.questions, this.answerQuestion, this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Questions(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((value) => Answer(answerQuestion, value))
              .toList()
        ],
      ),
    );
  }
}
