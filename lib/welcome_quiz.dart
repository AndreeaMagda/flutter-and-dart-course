import 'package:flutter/material.dart';

class WelcomeQuiz extends StatelessWidget {
  const WelcomeQuiz(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Learn flutter the fun way',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: 
              startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: const StadiumBorder(),
              side: BorderSide.none,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
