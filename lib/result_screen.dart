import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questionsList[i].question,
        "correct_answers": questionsList[i].answers[0],
        "user_answer": selectedAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("You have answer X out of Y question correctly!"),
            SizedBox(height: 30),
            QuestionSummary(summaryData: getSummaryData()),
            SizedBox(height: 30),
            FilledButton(onPressed: () {}, child: Text("Restart Quiz!")),
          ],
        ),
      ),
    );
  }
}
