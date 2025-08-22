import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final List<Map<String, Object>> itemData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemData.map((data) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Expanded(
              child: Column(
                children: [
                  Text(
                    data["question"] as String,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Your Answer: ${data["user_answer"] as String}",
                    style: GoogleFonts.lato(color: Colors.white),
                  ),
                  Text(
                    "Correct Answer: ${data["correct_answers"] as String}",
                    style: GoogleFonts.lato(color: Colors.lightGreenAccent),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
