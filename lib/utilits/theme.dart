import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: Color(0xFFF9F9F9),
  primaryColorDark: Color(0xFF222222),
  // backgroundColor: Color(0xFF222222),
  canvasColor: Color(0xFFDADADA),
  scaffoldBackgroundColor: Color(0xFFF9F9F9),
  appBarTheme: AppBarTheme(
    elevation: 0,
    color: Colors.white,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFFDB3022),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 0,
    selectedItemColor: Colors.red,
    unselectedItemColor: Color(0xFF9B9B9B),
  ),
  iconTheme: IconThemeData(
    color: Color(0xFF222222),
  ),
  primaryIconTheme: IconThemeData(
    color: Color(0xFF222222),
  ),
  accentIconTheme: IconThemeData(
    color: Color(0xFF222222),
  ),
  textTheme: TextTheme(
    headline2: TextStyle(
      fontSize: 48,
      color: Colors.white,
    ),
    headline1: TextStyle(
      color: Color(0xFF222222),
      fontWeight: FontWeight.bold,
      fontSize: 34,
    ),
    headline6: TextStyle(
      color: Color(0xFF222222),
      fontSize: 22,
    ),
    headline3: TextStyle(
      color: Color(0xFF222222),
      fontSize: 16,
    ),
    headline4: TextStyle(
      color: Color(0xFFDB3022),
      fontSize: 14,
    ),
    subtitle1: TextStyle(
      color: Color(0xFF222222),
      fontSize: 14,
    ),
    subtitle2: TextStyle(
      color: Color(0xFF2D2D2D),
      fontSize: 14,
    ),
    bodyText1: TextStyle(
      color: Colors.white,
      fontSize: 14,
    ),
    bodyText2: TextStyle(
      color: Color(0xFF222222),
      fontSize: 11,
    ),
    caption: TextStyle(
      color: Color(0xFF9B9B9B),
      fontSize: 11,
    ),
    headline5: TextStyle(
      color: Colors.white,
      fontSize: 11,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFFFFFFF),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Color(0xFFFFFFFF),
  ),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: Color(0xFF1E1F28),
  buttonColor: Color(0xFFEF3651),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF2A2C36)),
);
