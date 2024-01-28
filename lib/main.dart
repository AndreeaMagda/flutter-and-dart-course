import 'package:flutter/material.dart';
import 'package:my_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 217, 58, 111),
          Colors.blue,
        ),
      ),
    ),
  );
}
