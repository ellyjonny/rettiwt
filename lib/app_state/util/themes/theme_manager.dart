import 'package:flutter/material.dart';
import 'package:rettiwt/global/colors/dark_light_mode.dart';

class ThemeManager {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: lightScaffoldBackgroundColor,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      color: lightAppBarColor,
    ),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: darkScaffoldBackgroundColor,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      color: darkAppBarColor,
    ),
  );
}