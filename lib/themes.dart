import 'package:flutter/material.dart';

///fichier dans lequel on stocke nos themes.
///
///

class Themes {
  final ThemeData theme1 = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Color(0xFFDC143C)),
    fontFamily: "Quicksand",
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        filled: true,
        fillColor: Color.fromARGB(255, 255, 255, 255)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(primary: Color(0xFFDC143C))),
    scaffoldBackgroundColor: Color.fromARGB(255, 255, 255,
        255), //pour indiquer que c'est un code hexadecimale on met 0xFF avant le code
  );
  //ici on dit que ma variable est un type ThemeData et cette variable na va jamais etre modifiéi donc on y ajoute final

}
