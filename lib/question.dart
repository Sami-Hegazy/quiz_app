import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(12),
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
