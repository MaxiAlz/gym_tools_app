import 'package:flutter/material.dart';

class HomeItem {
  final String title;
  final String path;
  final String subtitle;
  final Icon icon;

  HomeItem(
      {required this.icon,
      required this.title,
      required this.path,
      required this.subtitle});
}

final itemsHome = <HomeItem>[
  HomeItem(
      icon: const Icon(Icons.timer_outlined),
      title: 'Temporizador',
      path: '/timer',
      subtitle:
          'Ajustable para tus ejercicio, intervalos de trabajo y descanso.'),
  HomeItem(
      icon: const Icon(Icons.fitness_center_outlined),
      title: 'Mis rutinas',
      path: '/routine-planner',
      subtitle: 'Crea y guarda tus rutinas de entrenamiento personalizadas.'),
  HomeItem(
      icon: const Icon(Icons.local_activity_outlined),
      title: 'Mi progreso:',
      path: '/progress-tracker',
      subtitle: 'Seguimiento de tu progreso en cada ejercicio')
];
