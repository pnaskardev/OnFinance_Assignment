import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onfinance_assignment/utils/colors.dart';

class Themes
{
  static ThemeData themefun(bool isDarkTheme,BuildContext context)
  {
    if(isDarkTheme==true)
    {
      return darkTheme;
    }
    return lightTheme;
  }


  static final darkTheme=ThemeData
  (
    appBarTheme: const AppBarTheme
    (
      color: Colors.black
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: const ColorScheme.dark().copyWith
    (
      primary: const Color.fromRGBO(255, 255, 255,1),
    ),
    primaryColor: const Color.fromRGBO(255, 255, 255,1),

    fontFamily: GoogleFonts.sourceSansPro().fontFamily,
    sliderTheme: const SliderThemeData
    (
      activeTrackColor: blueColor
    ) ,
    textTheme: TextTheme
    (
      titleLarge: GoogleFonts.sourceSansPro
      (
        fontSize: 25,
        // fontWeight: FontWeight.bold,
        color: blueColor,
        letterSpacing: 2,
      ),
      titleMedium: GoogleFonts.sourceSansPro
      (
        fontSize: 20,
        // fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
      titleSmall: GoogleFonts.sourceSansPro
      (
        fontSize: 10,
        // fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    )
  );

  static final lightTheme=ThemeData
  (
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    textTheme: TextTheme
    (
      titleLarge: GoogleFonts.sourceSansPro
      (
        fontSize: 30,
        fontWeight: FontWeight.bold,
        letterSpacing: 4,
      ),
      titleMedium: GoogleFonts.sourceSansPro
      (
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
      titleSmall: GoogleFonts.sourceSansPro
      (
        fontSize: 10,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    )
  );


}