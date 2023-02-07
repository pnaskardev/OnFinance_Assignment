import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onfinance_assignment/utils/colors.dart';

class Styles
{
   static TextStyle tabStyle =
      GoogleFonts.sourceSansPro
      (
        textStyle: const TextStyle( fontSize: 20)
      );

  static TextStyle head1 =
    GoogleFonts.sourceSansPro
    (
      textStyle: const TextStyle
      (
        fontSize: 25,
        color: blueColor
      )
    );
    static TextStyle head2 =
    GoogleFonts.sourceSansPro
    (
      textStyle: const TextStyle
      (
        fontSize: 25,
        color: Colors.white
      )
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