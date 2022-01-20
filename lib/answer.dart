import 'package:flutter/material.dart';

// class Answer2 extends StatefulWidget {
//   final VoidCallback selectHandler;
//   final String answerText;

//   const Answer2(this.selectHandler, this.answerText, {Key? key})
//       : super(key: key);

//   @override
//   _AnswerState createState() => _AnswerState();
// }

// class _AnswerState extends State<Answer2> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: const EdgeInsets.only(top: 5, bottom: 5, right: 50, left: 50),
//       child: ElevatedButton(
//         child: Text(widget.answerText),
//         onPressed: widget.selectHandler,
//       ),
//     );
//   }
// }

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
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
