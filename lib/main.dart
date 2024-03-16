import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_tracker_app/config/config.dart';
import 'package:gym_tracker_app/config/router/app_router.dart';
import 'package:gym_tracker_app/shared/providers/is_dark_mode_provider.dart';

void main() => runApp(
      const ProviderScope(child: MyApp()),
    );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterPovider);

    final isDarkMode = ref.watch(isDarkModeProvider);
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(isDarkmode: isDarkMode).getTheme(),
    );
  }
}
