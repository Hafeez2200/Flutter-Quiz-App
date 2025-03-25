import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
   const StartScreen({required this.StartQuiz,super.key});
  final void Function() StartQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(Icons.quiz_rounded, size: 100, color: Colors.white),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: StartQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
            icon: Icon(Icons.arrow_right_alt,color: Colors.white,),
            label: Text("StartQuiz "),
          ),
        ],
      ),
    );
  }
}
