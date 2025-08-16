import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Questions", style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),
          AnswerButton(answerText: "answer", onTap: () {}),
          AnswerButton(answerText: "answer", onTap: () {}),
          AnswerButton(answerText: "answer", onTap: () {}),
          AnswerButton(answerText: "answer", onTap: () {}),
        ],
      ),
    );
  }
}
