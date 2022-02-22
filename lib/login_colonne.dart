import 'package:flutter/material.dart';

import 'customTextFIeld.dart';

class LoginColone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginColoneState();
  }
}

class _LoginColoneState extends State<LoginColone> {
  bool passwordValid = false;
  bool usernameValid = false;

  String password = "";
  String username = "";

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Identifiant",
        style: TextStyle(fontSize: 45),
      ),
      CustomTextField(
        hinText: "Tapez votre identifiant", //textfield est un champ de texte
        padding: EdgeInsets.symmetric(vertical: 15),
        longueurMaximale: 20,
        longueurMinimale: 3,
        valueSet: (valid, texteEntre) {
          setState(() {
            username =  "Appuyer sur le bouton d'identification pour que "+ texteEntre + " se connecte !";
            usernameValid = valid;
          });
        }, //ici avec l'importation de mon customtextfield hintext et obscuretext j'ai juste a indiqué les parametres dans le widget
      ),
      CustomTextField(
          padding: EdgeInsets.only(bottom: 45),
          hinText: "Tapez votre mot de passe ",
          obscureText: true,
          longueurMinimale: 5,
          longueurMaximale: 14,
          valueSet: (valid, textEntre) {
            setState(() {
              password = textEntre;
              passwordValid = valid;
            });
          }),
      ElevatedButton(
        // elevatedbutton un simple bouton
        onPressed: (passwordValid && usernameValid)
            ? boutonLoginAppuyer
            : null, //&& est = "et" et ici si mon onpressed est null alors mon bouton est désactivé et donc si mpn passwordvalid et usernamevalid est valid alors on peut enclencher la fonction boutonLoginAppuyer
        child: Text(
            "Identification"), //child est un widget et donc on lui indique ce que l'on veut à l'intérieur
      ),
      Text(username),
    ]);
  }

  void boutonLoginAppuyer() {
    print("bouton identifiant appuyé");
  }
}
