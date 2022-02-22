import 'package:flutter/material.dart';

class CustomTextFIeld extends StatelessWidget {
  CustomTextFIeld({this.padding = EdgeInsets.zero}); //ici on va creer un padding spécifique

  EdgeInsets padding; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding, //le padding spécifique est ici intégré au widget 
      child: TextField(
        decoration: InputDecoration(hintText: "Mot de passe"),
        obscureText:
            true, //obscureText permet de chacher le texte c'est un booleen donc true or false
      ),
    );
  }
}
