import 'package:flutter/material.dart';
import 'package:gym_tracker_app/feactures/timer/timer.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: const Color.fromARGB(255, 122, 122, 122),
        title: const Text('Temporizador'),
      ),
      body: const TimerFeactures(),
    );
  }
}
