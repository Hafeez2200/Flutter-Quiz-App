import 'package:flutter/material.dart';
import 'package:learning/data/questions.dart';
import 'package:learning/questionssummary.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({super.key, required this.chosenanswer,required this.onRestart});

  final List<String> chosenanswer;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenanswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenanswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numtotalquestion = questions.length;
    final numcorrectquestion =
        summaryData.where((data) {
          return data['user_answer'] == data['correct_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'you answerd $numcorrectquestion out of $numtotalquestion question correctly',
              style: TextStyle(color: Colors.white),
            ),
            
            SizedBox(height: 30),
            Questionssummary(summaryData),
            SizedBox(height: 30),
            TextButton.icon(
              onPressed: onRestart,
              icon: Icon(Icons.refresh,color: Colors.white,),
              label: Text(
                "Restart Quiz",
                style: TextStyle(color: const Color.fromARGB(255, 9, 214, 101)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
