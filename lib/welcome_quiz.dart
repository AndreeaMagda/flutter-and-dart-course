import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter_tts/flutter_tts.dart';

class WelcomeQuiz extends StatefulWidget {
  const WelcomeQuiz({Key? key}) : super(key: key);

  @override
  WelcomeQuizState createState() => WelcomeQuizState();
}

class WelcomeQuizState extends State<WelcomeQuiz> {
  ConfettiController _confettiController = ConfettiController();
  FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    _confettiController = ConfettiController(duration: Duration(seconds: 2));
    flutterTts = FlutterTts();
    super.initState();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void startQuiz() {
    _confettiController.play();
    flutterTts.speak('Happy Birthday!');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/quiz-logo.png', width: 200),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Learn Flutter the fun way !',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: startQuiz,
                child: const Text('Start Quiz',style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            confettiController: _confettiController,
            blastDirectionality: BlastDirectionality.explosive,
            shouldLoop: false,
            emissionFrequency: 0.05,
            numberOfParticles: 20,
            gravity: 0.05,
          ),
        ),
      ],
    );
  }
}