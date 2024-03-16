import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_tracker_app/feactures/home/home.dart';
import 'package:gym_tracker_app/feactures/timer/screens/timer_screen.dart';

final appRouterPovider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'Home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/timer',
        name: 'Temporizador',
        builder: (context, state) => const TimerScreen(),
      ),
    ],
  );
});

// GoRouter configuration
