import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final void Function()? onTap;

  const CardItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onTap,
          child: ListTile(
            leading: icon,
            titleAlignment: ListTileTitleAlignment.titleHeight,
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ),
      ),
    );
  }
}
