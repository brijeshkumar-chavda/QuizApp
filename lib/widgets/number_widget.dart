import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isCorrectAnswer ? Colors.green : Colors.red,
      ),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
