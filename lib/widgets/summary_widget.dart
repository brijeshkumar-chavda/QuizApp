import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/widgets/number_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData["user_answer"] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NumberWidget(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData["question_index"] as int,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData["question"] as String,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Your Answer: ${itemData["user_answer"] as String}",
                  style: GoogleFonts.lato(color: Colors.white),
                ),
                Text(
                  "Correct Answer: ${itemData["correct_answer"] as String}",
                  style: GoogleFonts.lato(color: Colors.lightGreenAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
