import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_tracker_app/feactures/timer/providers/timer_items_provider.dart';
import 'package:gym_tracker_app/shared/shared.dart';

class TimerFeactures extends ConsumerWidget {
  const TimerFeactures({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerItems = ref.watch(timerItemsProvider);
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: timerItems.length,
      itemBuilder: (BuildContext context, int index) {
        final ItemTimer item = timerItems[index];
        return Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            CardItem(
              title: item.title,
              subtitle: item.subtitle,
              icon: item.icon,
              onTap: () {},
            ),
          ],
        );
      },
    );
  }
}
