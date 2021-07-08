import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressHanlder;
  final String answerText;

  Answer(this.onPressHanlder, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
        ),
        child: Text(answerText),
        onPressed: onPressHanlder,
      ),
    );
  }
}
