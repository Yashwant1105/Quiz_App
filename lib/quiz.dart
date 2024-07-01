import "package:flutter/material.dart";
import "package:second_app/data/questionlist.dart";
import "package:second_app/home_page.dart";
import "package:second_app/questions.dart";
import "package:second_app/results_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // void initState() {
  //   activeScreen = HomePage(switchScreen);
  //   super.initState();
  // }
  List<String> selectedAnswers = [];
  var activeScreen = 'start_screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results_screen";
        //selectedAnswers = [];
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == "questions_screen") {
      screenWidget = Questions(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == "results_screen") {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 124, 9, 65),
                    Color.fromARGB(255, 215, 34, 49),
                    Color.fromARGB(255, 242, 169, 0),
                    Color.fromARGB(255, 255, 94, 0),
                    Color.fromARGB(255, 129, 51, 6),

                    // Color.fromARGB(197, 87, 5, 39)
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
                child: screenWidget)));
  }
}
