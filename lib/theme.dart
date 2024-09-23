import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Colors.pinkAccent,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black87), // Replaces bodyText1
    bodyMedium: TextStyle(color: Colors.black54), // Replaces bodyText2
  ),
);
