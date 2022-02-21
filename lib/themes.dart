import 'package:flutter/material.dart';

///fichier dans lequel on stocke nos themes.
///
///


class Themes {
 final ThemeData theme1 = ThemeData(
   
   primaryColor: Color(0xFFDC143C),
   elevatedButtonTheme: ElevatedButtonThemeData(
     style: ElevatedButton.styleFrom(primary:Color(0xFFDC143C) )) //pour indiquer que c'est un code hexadecimale on met 0xFF avant le code 
 ); 
  //ici on dit que ma variable est un type ThemeData et cette variable na va jamais etre modifiéi donc on y ajoute final
  
}