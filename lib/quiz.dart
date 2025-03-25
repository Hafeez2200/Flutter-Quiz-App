import 'package:flutter/material.dart';
import 'package:learning/data/questions.dart';
import 'package:learning/questionscreen.dart';
import 'package:learning/resultscreen.dart';
import 'package:learning/startscreen.dart';


class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz>createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
 List<String> selectedAnswers = [];

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(StartQuiz: SwitchScreen,);
    super.initState();
  }


  void SwitchScreen(){
    setState(() {
      activeScreen = QuestionScreen(onSelectAnswer: chooseAnswer,);
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        
        activeScreen = Resultscreen(chosenanswer: selectedAnswers,onRestart: restartQuiz,);

      });
    }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = QuestionScreen(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.deepPurple,
              Colors.deepPurpleAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            )
          ),
          child: activeScreen,
        )
        ),
      );
    
  }
}