import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 5, bottom: 5, right: 50, left: 50),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blue.shade400),
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
