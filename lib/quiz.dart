import 'package:flutter/material.dart';
import 'package:my_project/questions_screen.dart';
import 'package:my_project/welcome_quiz.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
@override
  State<Quiz> createState() {
    return _QuizState();
  }

}

class _QuizState extends State<Quiz>{
Widget activeScreen= const WelcomeQuiz();

void switchScreen(){
  setState(() {
    activeScreen=const QuestionsScreen();
  });
}

  @override
  Widget build(context){
     return   MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              
              colors: [
                Color.fromARGB(255, 151, 119, 224),
                Color.fromARGB(255, 113, 48, 243),
                ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),   
          child:activeScreen,   
        ),
      )
    );
  
  }
}