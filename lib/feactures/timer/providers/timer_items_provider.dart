import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemTimer {
  final String title;
  final String subtitle;
  final Icon? icon;

  ItemTimer({
    required this.title,
    required this.subtitle,
    this.icon,
  });
}

final timerItemsProvider = Provider<List<ItemTimer>>((ref) {
  return [
    ItemTimer(
      title: 'Calentamiento',
      icon: const Icon(Icons.sports_bar),
      subtitle: 'Tiempo antes de comenzar tus series de ejerciciso',
    ),
    ItemTimer(
      title: 'Ejercitar',
      icon: const Icon(Icons.fitness_center_outlined),
      subtitle: '¿Cuanto tiempo vas a ejercitarte?',
    ),
    ItemTimer(
      title: 'Descanso',
      icon: const Icon(Icons.front_hand_outlined),
      subtitle: '¿Cuanto tiempo vas a descansar?',
    ),
    ItemTimer(
      title: 'Series / Repetir',
      icon: const Icon(Icons.repeat),
      subtitle: '¿Cuantas veces repetiras este ejercicio?',
    ),
  ];
});
