import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'lib/assets/logo.png',
            width: 300,
            color: Colors.white60,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'The Quiz App',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white70,
            ),
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
