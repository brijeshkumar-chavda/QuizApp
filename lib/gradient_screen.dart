import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class GradientScreen extends StatefulWidget {
  const GradientScreen({super.key});

  @override
  State<GradientScreen> createState() {
    return _GradientScreenState();
  }
}

class _GradientScreenState extends State<GradientScreen> {
  final List<String> selectedOptions = [];
  var activeScreen = "start-screen";

  void switchToQuizScreen() {
    setState(() {
      activeScreen = "quiz-screen";
    });
  }

  void selectOption(String answer) {
    selectedOptions.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == "start-screen"
        ? StartScreen(switchToQuizScreen: switchToQuizScreen)
        : QuestionsScreen(onSelectOption: selectOption);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
