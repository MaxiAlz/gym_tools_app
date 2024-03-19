import 'package:isar/isar.dart';
part 'interval_timer_entity.g.dart';

@collection
class IntervalTimer {
  final Timer preWorkout;
  final Timer workout;
  final Timer rest;
  final int sets;
  Id isarId = Isar.autoIncrement;

  IntervalTimer({
    required this.preWorkout,
    required this.workout,
    required this.rest,
    required this.sets,
  });
}

@embedded
class Timer {
  int? hours;
  int? minutes;
  int? seconds;
}
