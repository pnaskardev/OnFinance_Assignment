import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles
{
   static TextStyle tabStyle =
      GoogleFonts.sourceSansPro
      (
        textStyle: const TextStyle( fontSize: 20)
      );

  static TextStyle teamName =
    GoogleFonts.sourceSansPro
    (
      textStyle: const TextStyle( fontSize: 20)
    );

    static TextStyle buttonText =
    GoogleFonts.sourceSansPro
    (
      textStyle: const TextStyle
      (
        fontSize: 15,
        color: Colors.white
      )
    );
    static TextStyle smallTabName =
    GoogleFonts.sourceSansPro
    (
      textStyle: const TextStyle( fontSize: 15),
      color: Colors.blueGrey
    );
}