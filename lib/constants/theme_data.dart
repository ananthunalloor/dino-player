import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color dPrimaryColor = const Color(0xFF8dbbff);
Color dTextColor = const Color(0xFFffffff);
Color dBackgroundColor = const Color(0xFF23293d);

// new flutter theme based above variables
ThemeData dThemeData = ThemeData(
  scaffoldBackgroundColor: dBackgroundColor,
  fontFamily: GoogleFonts.quicksand().fontFamily,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: dBackgroundColor,
    secondary: dPrimaryColor,
  ),
  textTheme: textTheme.apply(
    bodyColor: dTextColor,
    displayColor: dTextColor,
  ),
);

// flutter text theme based above variables

TextTheme textTheme = TextTheme(
    headline1: TextStyle(
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: dTextColor,
    ),
    headline2: TextStyle(
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: dTextColor,
    ),
    headline3: TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: dTextColor,
    ),
    headline4: TextStyle(
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: dTextColor,
    ),
    headline5: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.0,
      color: dTextColor,
    ),
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: dTextColor,
    ),
    subtitle1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: dTextColor,
    ),
    subtitle2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: dTextColor,
    ),
    bodyText1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: dTextColor,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: dTextColor,
    ),
    button: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: dTextColor,
    ),
    caption: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: dTextColor,
    ),
    overline: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: dTextColor,
    ));
