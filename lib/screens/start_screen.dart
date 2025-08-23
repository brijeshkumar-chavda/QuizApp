import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.switchToQuizScreen});

  final void Function() switchToQuizScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),
          SizedBox(height: 30),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 30),
          FilledButton.icon(
            onPressed: switchToQuizScreen,
            style: FilledButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.purple,
            ),
            icon: const Icon(Icons.arrow_right_alt, size: 34),
            label: Text(
              "Start Quiz",
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
