import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.grey.shade300,
  textTheme: TextTheme(
    displayLarge: GoogleFonts.bebasNeue(
      fontSize: 72,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 20,
      color: Colors.grey.shade700,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Colors.grey.shade800,
    ),
    titleLarge: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);
