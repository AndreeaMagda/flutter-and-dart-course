import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 204, 161, 239),
              Color.fromARGB(255, 150, 98, 205),
            ],
          )),
          child: const Center(
            child: Text('Expecto Patronum 🪄'),
          ),
        ),
      ),
    ),
  );
}
