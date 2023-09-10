import 'package:adv_basics/data/questions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosedAnswers,
    required this.onSelectedAnswer,
  });
  final void Function() onSelectedAnswer;


  final List<String> chosedAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosedAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where(
      (element) => element['user_answer'] == element['correct_answer']).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answerd $numCorrectQuestion out of $numTotalQuestion questions correctly!',
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 255, 190, 212),
                fontSize: 20,
                // fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onSelectedAnswer,
              style: OutlinedButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 30),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 15)),
              icon: const Icon(Icons.restart_alt),
              label: const Text("Restart Quiz!")),
          ],
        ),
      ),
    );
  }
}
