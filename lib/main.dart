import 'package:flutter/material.dart';
import 'package:my_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 152, 104, 223),
          Color.fromARGB(255, 79, 26, 225),
        ),
      ),
    ),
  );
}
