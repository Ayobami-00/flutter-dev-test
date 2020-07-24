import 'package:flutter/material.dart';

ThemeData testExerciseTheme() {
  ThemeData data = ThemeData(
    primaryColorDark: Color(0xffF2F2F2),
    primaryColor: Color(0xffF2F2F2),
    accentColor: Color(0xffFE8137),
    textSelectionColor: Color(0xFFBEC2CE),
    buttonColor: Color(0xFF6619EA),
    appBarTheme: AppBarTheme(
        textTheme: TextTheme(
      bodyText1: TextStyle(
          fontFamily: "Avenir LT Std",
          fontWeight: FontWeight.w200,
          fontSize: 15,
          color: Colors.black),
    )),
    textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: "Avenir",
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Color(0xFF0E0E0F)),
        headline3: TextStyle(
            fontFamily: "Avenir LT Std",
            fontWeight: FontWeight.w700,
            fontSize: 17,
            color: Color(0xFFBEC2CE)),
        headline5: TextStyle(
            fontFamily: "Avenir LT Std",
            fontWeight: FontWeight.w200,
            fontSize: 13,
            color: Color(0xFF050505)),
        subtitle1: TextStyle(
            fontFamily: "Avenir",
            fontWeight: FontWeight.normal,
            fontSize: 11,
            color: Color(0xFFBEC2CE)),
        subtitle2: TextStyle(
            fontFamily: "Avenir",
            fontWeight: FontWeight.normal,
            fontSize: 11,
            color: Colors.white),
        bodyText1: TextStyle(
            fontFamily: "Segoe UI",
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Color(0xFF6619EA))),
  );

  return data;
}
