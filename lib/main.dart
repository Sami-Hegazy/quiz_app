import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _questionAnswer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  var questions = [
    {
      'questionText': 'what\'s your favourite color?',
      'Answer': [
        {'choice': 'white', 'score': 0},
        {'choice': 'black', 'score': 10},
        {'choice': 'blue', 'score': 0},
        {'choice': 'red', 'score': 0},
      ],
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'Answer': [
        {'choice': 'Lion', 'score': 10},
        {'choice': 'fox', 'score': 0},
        {'choice': 'tiger', 'score': 0},
        {'choice': 'elephant', 'score': 0},
      ],
    },
    {
      'questionText': 'what\'s your favourite food?',
      'Answer': [
        {'choice': 'meet', 'score': 0},
        {'choice': 'chicken', 'score': 10},
        {'choice': 'fish', 'score': 0},
        {'choice': 'vegetables', 'score': 0},
      ],
    },
    {
      'questionText': 'what\'s your favourite player?',
      'Answer': [
        {'choice': 'Cr7', 'score': 0},
        {'choice': 'messi', 'score': 0},
        {'choice': 'Mo.Salah', 'score': 0},
        {'choice': 'سعيد قطة', 'score': 10},
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questionAnswer: _questionAnswer,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(
                resultScore: _totalScore,
                restHandler: _restartQuiz,
              ),
      ),
    );
  }
}
