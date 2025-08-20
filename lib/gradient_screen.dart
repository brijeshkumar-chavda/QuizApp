import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_list.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class GradientScreen extends StatefulWidget {
  const GradientScreen({super.key});

  @override
  State<GradientScreen> createState() {
    return _GradientScreenState();
  }
}

class _GradientScreenState extends State<GradientScreen> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchToQuizScreen() {
    setState(() {
      activeScreen = "quiz-screen";
    });
  }

  void selectAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questionsList.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var currentScreenWidget = activeScreen == "start-screen"
        ? StartScreen(switchToQuizScreen: switchToQuizScreen)
        : QuestionsScreen(onSelectAnswer: selectAnswer);

    if (activeScreen == "result-screen") {
      currentScreenWidget = ResultScreen(selectedAnswers: selectedAnswers);
    }

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
          child: currentScreenWidget,
        ),
      ),
    );
  }
}
