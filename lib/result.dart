import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  const Result(this.resultScore, {Key? key}) : super(key: key);

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
    return Container(
      margin: const EdgeInsets.only(right: 50, left: 50),
      width: double.infinity,
      child: Center(
        child: Text(
          resultPhrase,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
