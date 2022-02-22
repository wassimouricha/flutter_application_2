import 'package:flutter/material.dart';

class CustomTextFIeld extends StatelessWidget {
  CustomTextFIeld(
      {this.padding = EdgeInsets.zero,
      this.hinText = "",
      this.obscureText =
          false}); //ici on va creer un padding , un hinText et un ObscureText spécifique

  EdgeInsets padding;
  String hinText;
  bool obscureText; //bool est un booleen

  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding, //le padding spécifique est ici intégré au widget
      child: TextField(
        decoration: InputDecoration(
          hintText: hinText,
        ),
        obscureText:
            obscureText, //obscureText permet de chacher le texte c'est un booleen donc true or false
      ),
    );
  }
}
