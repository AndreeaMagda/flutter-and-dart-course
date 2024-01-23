import 'package:flutter/material.dart';


class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Expecto Patronum🪄',
      style: TextStyle(
        color: Color.fromARGB(255, 72, 5, 84),
        fontSize: 35,
      ),
    );
  }
}
