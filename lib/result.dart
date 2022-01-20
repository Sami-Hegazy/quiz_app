import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restHandler;

  const Result({required this.resultScore, required this.restHandler, Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore < 15) {
      resultText = 'You are so bad';
    } else if (resultScore <= 20) {
      resultText = 'Pretty Likeable';
    } else if (resultScore < 25) {
      resultText = 'Strange....';
    } else {
      resultText = 'You are Awesome and innocent';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Score is ${resultScore.toString()}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: restHandler,
            child: const Text('rest the Quiz'),
          ),
        ],
      ),
    );
  }
}
