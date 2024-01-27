import 'package:my_project/gradient_container.dart';

import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromRGBO(235, 115, 155, 1),
          Color.fromARGB(255, 153, 17, 112),
          ),
      ),
    ),
  );
}