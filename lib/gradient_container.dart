import 'package:flutter/material.dart';
import 'package:my_project/styled_text.dart';


class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});
  @override
  Widget build(context){
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 204, 161, 239),
                Color.fromARGB(255, 150, 98, 205),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: StyledText()
          ),
        );
  }
} 
