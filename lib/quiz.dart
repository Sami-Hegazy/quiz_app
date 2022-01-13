import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function questionAnswer;
  final int questionIndex;

  const Quiz(
      {required this.questionAnswer,
      required this.questionIndex,
      required this.questions,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'].toString()),
        ...(questions[questionIndex]['Answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => questionAnswer(answer['score']),
              answer['choice'] as String);
        }).toList()
      ],
    );
  }
}
