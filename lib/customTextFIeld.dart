import 'package:flutter/material.dart';

class CustomTextFIeld extends StatefulWidget {
  CustomTextFIeld(
      {this.padding = EdgeInsets.zero,
      this.hinText = "",
      this.obscureText = false,
      this.longueurMaximale,
      this.longueurMinimale}); //ici on va creer un padding , un hinText et un ObscureText spécifique

  //la classe CustomTextFIeld sera pour tout ce qui est statique , pour tout ce qu'on définit quand on crée le widget et qui ne va pas changer

  EdgeInsets padding;
  String hinText;
  bool obscureText; //bool est un booleen

  int? longueurMinimale;
  int? longueurMaximale;

  @override
  State<StatefulWidget> createState() {
    return _CustomTextFieldState(); //ici on donne l'accès au state à cette classe pour qu'il puisse  demarrer la methode build en dessous et donc le widget
  }
}

class _CustomTextFieldState extends State<CustomTextFIeld> {
  String?
      errorMessage; //? indique la variable peut etre un null ou ne pas etre un null

  void userSubmittedText(String TextEntree) {
    //sera notre fonction lorsque l'on aura cliqué sur envoyé et elle sera enclenché par onSubmitted
    errorMessage = null;
    
    if (widget.longueurMinimale != null) {
      //en faisant widget. cela permet d'acceder a toute la liste des parametre que l'on a définit au préablable et on devra le faire pour toutes les variables statiques
      if (TextEntree.length < widget.longueurMinimale!) {
        //ici avec le ! on certifie que longueurminimale n'est pas null vu que dans le if au dessus on l'a spécifié
        //trop petit donc
        setState(() {
          //setstate permet d'indiquer qu'il faut rebuild le widget lorsque l'on a une variable qui peut changer
          errorMessage =
              "Veuillez entrer plus ${widget.longueurMinimale} caratères pour ce champ.";
        });
      }
      print("erreur");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding, //le padding spécifique est ici intégré au widget
      child: TextField(
        decoration:
            InputDecoration(hintText: widget.hinText, errorText: errorMessage),
        obscureText: widget
            .obscureText, //obscureText permet de chacher le texte c'est un booleen donc true or false
        onSubmitted:
            userSubmittedText, //onsubmitted permet de demarrer une fonction lorsque l'on a cliqué sur envoyé
      ),
    );
  }
}
