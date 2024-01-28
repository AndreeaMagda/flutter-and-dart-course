import 'package:flutter/material.dart';

class WelcomeQuiz extends StatelessWidget {
  const WelcomeQuiz({super.key});
void startQuiz(){}
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      Image.asset(
        'assets/images/quiz-logo.png',
        width: 200,
      ),
      const SizedBox(
        height: 20,
      ),
   const   Text( 'Learn flutter the fun way',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,)
      ),
      const SizedBox(
        height: 20,
      ),
      OutlinedButton(onPressed:startQuiz ,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
       // backgroundColor: Colors.blue,
        shape: const StadiumBorder(),
        side: BorderSide.none,

      ),
       child: const Text('Start Quiz'),)
    ]);
  }
}
