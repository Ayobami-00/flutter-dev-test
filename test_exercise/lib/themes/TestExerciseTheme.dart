import 'package:flutter/material.dart';

ThemeData delivastTheme() {
  ThemeData data = ThemeData(
    primaryColorDark: Color(0xffF2F2F2),
    primaryColor: Color(0xffF2F2F2),
    accentColor: Color(0xffFE8137),
    textSelectionColor: Color(0xff4A4A4A),
    textTheme: TextTheme(
      headline1: TextStyle(
          fontFamily: "Avenir", fontWeight: FontWeight.normal, fontSize: 20),

      // headline1: GoogleFonts.lato(
      //     fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      // headline2: GoogleFonts.lato(
      //     fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      // headline3: GoogleFonts.lato(fontSize: 48, fontWeight: FontWeight.w400),
      // headline4: GoogleFonts.lato(
      //     fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      // headline5: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.w400),
      // headline6: GoogleFonts.lato(
      //     fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      // subtitle1: GoogleFonts.lato(
      //     fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      // subtitle2: GoogleFonts.lato(
      //     fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      // bodyText1: GoogleFonts.lato(
      //     fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      // bodyText2: GoogleFonts.lato(
      //     fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      // button: GoogleFonts.lato(
      //     fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      // caption: GoogleFonts.lato(
      //     fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      // overline: GoogleFonts.lato(
      //     fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    ),
  );

  return data;
}
