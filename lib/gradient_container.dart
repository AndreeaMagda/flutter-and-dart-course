
import 'package:flutter/material.dart';
import 'package:my_project/welcome_quiz.dart';


const startAligment=Alignment.topCenter;
const endAligment=Alignment.bottomCenter;

class GradientContainer extends StatelessWidget{
const GradientContainer(this.colorStart, this.colorEnd,{super.key});

const GradientContainer.purple({super.key}):
colorStart= const Color.fromARGB(255, 239, 223, 229),
colorEnd=const Color.fromARGB(255, 0, 0, 0);

final Color colorStart;
final Color colorEnd;

@override
Widget build(context){
  return Container (
    decoration: BoxDecoration(
      gradient:  LinearGradient(
        colors: [
          colorStart,
          colorEnd,
        ],
        begin: startAligment,
        end: endAligment,
        ),
    ),
    child: const Center(
      child: WelcomeQuiz(),
    ),
  );
}
} 