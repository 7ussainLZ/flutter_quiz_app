import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 200,
          //   ),
          // ),
          const SizedBox(height: 40),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 30),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 15)),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz")),
        ],
      ),
    );
  }
}
