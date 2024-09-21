import 'package:flutter/material.dart';

class AppThemeData {
  static ElevatedButtonThemeData _elevatedButtonTheme(
          {Color? backgroundColor}) =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            // Set border color and width
            borderRadius: BorderRadius.circular(8), // Set border radius
          ),
        ),
      );

  static final darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark, elevatedButtonTheme: _elevatedButtonTheme(),
    // colorScheme: ColorScheme.light(primary: Colors.blue),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     backgroundColor: WidgetStateProperty.all(Colors.white),
    //   ),
    // ),
  );

  static final lightTheme = ThemeData.light().copyWith(
      brightness: Brightness.light,
      elevatedButtonTheme: _elevatedButtonTheme(backgroundColor: Colors.white),
      textTheme: const TextTheme());
}
