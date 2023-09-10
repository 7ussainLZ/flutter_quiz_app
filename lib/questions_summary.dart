import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            var circleAvatarColor = const Color.fromARGB(255, 213, 83, 183);
            if (data['user_answer'] == data['correct_answer']) {
              circleAvatarColor = const Color.fromARGB(255, 100, 151, 238);
            }

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   ((data['question_index'] as int) + 1).toString(),
                //   style: const TextStyle(
                //       fontSize: 15,
                //       // color: Colors.white,
                //       fontWeight: FontWeight.bold,
                //       // backgroundColor: Colors.white,
                //       background: CircleAvatar(
                //         backgroundColor: Colors.white,
                //       )),
                // ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: circleAvatarColor,
                  child: Center(
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.manrope(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 194, 104, 210),
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 118, 157, 223)),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
