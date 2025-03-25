import 'package:flutter/material.dart';
import 'package:learning/answersbutton.dart';
import 'package:learning/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentquestionindex = 0;
  void answerquestion(String selectedAnswer){
      setState(() {
        widget.onSelectAnswer(selectedAnswer);
        currentquestionindex++;
      });
    }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[currentquestionindex];

    

    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentquestion.text, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            SizedBox(height: 20),
            ...currentquestion.getShuffleList().map((item){
              return Answersbutton(answertext: item, onTap: (){
                answerquestion(item);
              });
            }),
            
          ],
        ),
      ),
    );
  }
}
