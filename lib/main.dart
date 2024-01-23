import 'package:flutter/material.dart';
import 'package:my_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body:  GradientContainer(
                Color.fromARGB(255, 204, 161, 239),
                Color.fromARGB(255, 150, 98, 205),
      ),
    ),
  )
  );
}