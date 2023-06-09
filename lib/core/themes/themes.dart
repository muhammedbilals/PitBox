import 'package:flutter/material.dart';

enum AppTheme { darkTheme, lightTheme }

final appThemeData = {
  AppTheme.darkTheme: ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.black,
    primaryColorLight: Colors.white.withOpacity(0.7),
    secondaryHeaderColor: Colors.white,
    canvasColor: const Color.fromARGB(255, 20, 20, 20),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w900,
        color: Color.fromARGB(255, 255, 0, 0),
      ),
      displayMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 0, 0),
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 0, 0),
      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme.dark(),
  ),
  AppTheme.lightTheme: ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    primaryColorLight: Colors.black.withOpacity(0.7),
    secondaryHeaderColor: Colors.black,
    canvasColor: const Color.fromARGB(255, 235, 235, 235),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w900,
        color: Color.fromARGB(255, 255, 0, 0),
      ),
      displayMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    colorScheme: const ColorScheme.light(),
  ),
};
