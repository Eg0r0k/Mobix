import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color mainColor = Color.fromARGB(255, 27, 111, 236);
  static const Color blackText = Color(0xFF161712);
  static const Color whiteText = Color(0xFFFAFFFF);
  static const Color graySubText = Color.fromARGB(255, 138, 138, 138);
}

class CustomCardTheme {
  static final cardDecoration = BoxDecoration(
      color: Color.fromARGB(255, 165, 165, 165),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
            color: const Color.fromARGB(255, 201, 201, 201),
            spreadRadius: 1,
            blurRadius: 15,
            offset: const Offset(0, 15)),
      ]);
}

class TextStyles {
  static const TextStyle displayLarge =
      TextStyle(fontSize: 32, color: AppTheme.blackText);
  static const TextStyle displayMedium =
      TextStyle(fontSize: 24, color: AppTheme.blackText);
  static const TextStyle displaySmall =
      TextStyle(fontSize: 18, color: AppTheme.blackText);
  static const TextStyle headlineLarge =
      TextStyle(fontSize: 24, color: AppTheme.blackText);
  static const TextStyle headlineMedium =
      TextStyle(fontSize: 20, color: AppTheme.blackText);
  static const TextStyle headlineSmall =
      TextStyle(fontSize: 16, color: AppTheme.blackText);
  static const TextStyle titleLarge =
      TextStyle(fontSize: 20, color: AppTheme.blackText);
  static const TextStyle subtitle =
      TextStyle(fontSize: 14, color: AppTheme.blackText);
  static const TextStyle body =
      TextStyle(fontSize: 14, color: AppTheme.blackText);
  static const TextStyle caption =
      TextStyle(fontSize: 12, color: AppTheme.blackText);
}
