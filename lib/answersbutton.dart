import 'package:flutter/material.dart';

class Answersbutton extends StatelessWidget {
  const Answersbutton({required this.answertext,required this.onTap, super.key});
  final String answertext;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: ElevatedButton(onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 66, 1, 128),
        foregroundColor: Colors.white,
      ),
      child: Text(answertext),
      
      ),
    );
  }
}