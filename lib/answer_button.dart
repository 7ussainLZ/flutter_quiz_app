import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key,
      required this.answerText,
      required this.onTop});
  final String answerText;

  final void Function() onTop;

  @override
  Widget build(context) {
    return ElevatedButton(
      
      onPressed: onTop, 
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ), 
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answerText, textAlign: TextAlign.center, ),
    );
  }
}
