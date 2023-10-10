import 'package:flutter/material.dart';

const darkPrimaryColorCode = 0xFFA9DFD8;
const darkCardBackgroundColor = Color(0xFF21222D);
const darkBackgroundColor = Color(0xFF171821);
const darkButtonBackgroundColor = Color(0xFF21222D);
const defaultPadding = 16.0;

const lightPrimaryColorCode = 0xFFF8F8F8;
const lightCardBackgroundColor = Color(0xFFFFFFFF);
const lightBackgroundColor = Color(0xFFFFFFFF);

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: MaterialColor(
    lightPrimaryColorCode,
    <int, Color>{
      50: const Color(lightPrimaryColorCode).withOpacity(0.1),
      100: const Color(lightPrimaryColorCode).withOpacity(0.2),
      200: const Color(lightPrimaryColorCode).withOpacity(0.3),
      300: const Color(lightPrimaryColorCode).withOpacity(0.4),
      400: const Color(lightPrimaryColorCode).withOpacity(0.5),
      500: const Color(lightPrimaryColorCode).withOpacity(0.6),
      600: const Color(lightPrimaryColorCode).withOpacity(0.7),
      700: const Color(lightPrimaryColorCode).withOpacity(0.8),
      800: const Color(lightPrimaryColorCode).withOpacity(0.9),
      900: const Color(lightPrimaryColorCode).withOpacity(1.0),
    },
  ),
  scaffoldBackgroundColor: lightBackgroundColor,
  fontFamily: 'IBMPlexSans',
  brightness: Brightness.light,
  cardColor: lightCardBackgroundColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkButtonBackgroundColor,
      foregroundColor: Colors.grey,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
  ),
  secondaryHeaderColor: Colors.black,
);

final darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: MaterialColor(
    darkPrimaryColorCode,
    <int, Color>{
      50: const Color(darkPrimaryColorCode).withOpacity(0.1),
      100: const Color(darkPrimaryColorCode).withOpacity(0.2),
      200: const Color(darkPrimaryColorCode).withOpacity(0.3),
      300: const Color(darkPrimaryColorCode).withOpacity(0.4),
      400: const Color(darkPrimaryColorCode).withOpacity(0.5),
      500: const Color(darkPrimaryColorCode).withOpacity(0.6),
      600: const Color(darkPrimaryColorCode).withOpacity(0.7),
      700: const Color(darkPrimaryColorCode).withOpacity(0.8),
      800: const Color(darkPrimaryColorCode).withOpacity(0.9),
      900: const Color(darkPrimaryColorCode).withOpacity(1.0),
    },
  ),
  scaffoldBackgroundColor: darkBackgroundColor,
  fontFamily: 'IBMPlexSans',
  brightness: Brightness.dark,
  cardColor: darkCardBackgroundColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkButtonBackgroundColor,
      foregroundColor: Colors.grey,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
  ),
  secondaryHeaderColor: Colors.grey,
);
