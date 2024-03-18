import 'package:flutter/material.dart';
import 'package:gym_tracker_app/feactures/timer/timer.dart';
import 'package:gym_tracker_app/shared/shared.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {

    escribir() async {
      final timeStorage = TimerFileManager();
      TimerSettings newSettings =
          TimerSettings(hours: 1, minutes: 30, seconds: 0);
      await timeStorage.writeSettings(path: 'calentar.json', settings: newSettings);
    }

    maver() async {
      final timeStorage = TimerFileManager();
      await timeStorage.readSettings(path: 'calentar.json');
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: const Color.fromARGB(255, 122, 122, 122),
        title: const Text('Temporizador'),
      ),
      body: const TimerFeactures(),
      floatingActionButton: Row(
        children: [
          FilledButton(
            onPressed: () {
              escribir();
            },
            child: Text('escribir'),
          ),
          FilledButton(
            onPressed: () {
              // hacerCoso();
            },
            child: Text('leer'),
          ),
          FilledButton(
            onPressed: () {
              maver();
            },
            child: Text('maver'),
          ),
        ],
      ),
    );
  }
}
