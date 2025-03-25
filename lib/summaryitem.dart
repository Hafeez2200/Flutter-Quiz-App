import 'package:flutter/material.dart';
import 'package:learning/questionidentifier.dart';

class Summaryitem extends StatelessWidget {
  const Summaryitem({required this.itemData, super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final iscorrectanswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Questionidentifier(
          questionindex: itemData['question_index'] as int,
          isCorrect: iscorrectanswer,
        ),
        SizedBox(width: 20,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 15,
                ),
              ),

              SizedBox(height: 5),
              Text(
                itemData['user_answer'] as String,
                style: TextStyle(
                  color: const Color.fromARGB(255, 202, 129, 198),
                ),
              ),

              Text(
                itemData['correct_answer'] as String,
                style: TextStyle(color: Colors.greenAccent),
              ),
            ],
          ),
        ),
      ],
    );
    
  }
}
