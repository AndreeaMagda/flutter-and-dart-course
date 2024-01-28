import 'package:flutter/material.dart';
import 'package:my_project/welcome_quiz.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorStart, this.colorEnd, {super.key});

  const GradientContainer.purple({super.key})
      : colorStart = Colors.pink,
        colorEnd = Colors.blue;

  final Color colorStart;
  final Color colorEnd;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorStart, colorEnd],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: WelcomeQuiz(),
      )
    );
  }
}
