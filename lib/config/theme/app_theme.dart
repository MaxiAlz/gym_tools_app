import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFFE8C02);
  static const Color secondaryColor = Color(0xFF5EDF01);
  static const Color errorColor = Color.fromARGB(255, 207, 0, 0);
  static const Color background = Color.fromARGB(255, 232, 232, 232);
  static const Color surface = Color.fromARGB(255, 218, 229, 0);
}

class AppTheme {
  final bool isDarkmode;

  AppTheme({required this.isDarkmode});

  ThemeData getTheme() => ThemeData(
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: const Color.fromARGB(255, 254, 115, 2),
        listTileTheme: const ListTileThemeData(
          iconColor: Color.fromARGB(255, 254, 115, 2),
        ),
      );
}
