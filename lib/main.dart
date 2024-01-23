import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

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
            child: Text(
              'Expecto Patronum🪄',
              style: TextStyle(
                color: Color.fromARGB(255, 72, 5, 84),
                fontSize: 35,
              ),
            ),
          ),
        );
  }
} 
