import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_tracker_app/config/router/app_router.dart';
import 'package:gym_tracker_app/shared/constants/items_home.dart';
import 'package:gym_tracker_app/shared/providers/is_dark_mode_provider.dart';
import 'package:gym_tracker_app/shared/shared.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);

    final colors = Theme.of(context).colorScheme;
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  ref
                      .read(isDarkModeProvider.notifier)
                      .update((state) => !state);
                },
                icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode))
          ],
          title: const Text(
            'Gym Tools 🏃🏽‍♂️',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 25,
            ),
          ),
          backgroundColor: colors.primaryContainer,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: itemsHome.length,
          itemBuilder: (BuildContext context, int index) {
            final HomeItem item = itemsHome[index];
            return Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                CardItem(
                  title: item.title,
                  subtitle: item.subtitle,
                  icon: item.icon,
                  onTap: () {
                    ref.read(appRouterPovider).push(item.path);
                  },
                ),
              ],
            );
          },
        ));
  }
}
