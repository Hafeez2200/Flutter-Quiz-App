import 'package:flutter/material.dart';

class Questionidentifier extends StatelessWidget {
  const Questionidentifier({
    required this.questionindex,
    required this.isCorrect,
    super.key,
  });

  final int questionindex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final questionnumber = questionindex + 1;
    return Container(
      width: 20,
      height: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            isCorrect
                ? Color.fromARGB(255, 150, 198, 241)
                : Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionnumber.toString(),
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
