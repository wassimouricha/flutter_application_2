// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'themes.dart';
import 'customTextFIeld.dart';

void main() {
  runApp(Wassimus());
}

class Wassimus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Application de wassim",
        theme: Themes().theme1,
        home: Scaffold(
          // resizeToAvoidBottomInset: false, //ici cette commande permet de supprimer l'erreur indiquand que le clavier du tel/tablette cache le contenu de l' appli
          appBar: AppBar(
            title: Text("Wassim's app"),
          ),
          body: SingleChildScrollView(
            child: //cette commande ici permet d'indiquer au tel/tab que l'on peut scroller dans l'app
                Padding(
                    padding: EdgeInsets.all(30),
                    child: construireColonnePrincipal()),
          ),
        ));
  }

  void boutonLoginAppuyer() {
    print("le bouton à été appuyé bravo");
  }

  Widget construireColonnePrincipal() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Login",
          style: TextStyle(fontSize: 45),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Tapez votre nom"), //textfield est un champ de texte
          ),
        ),

        // Row(
        //   children: [
        //iciavec row je fais une sorte de container horizontale avec comme enfant les deux widget bouton que j'ai crée précédement
        CustomTextField(
            padding: EdgeInsets.only(bottom: 15),
            hinText: "Mot de passe ",
            obscureText: true,
            longueurMinimale:
                5), //ici avec l'importation de mon customtextfield hintext et obscuretext j'ai juste a indiqué les parametres dans le widget

        Padding(
          padding: EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: boutonLoginAppuyer,
            child: Text(
                "Login"), //child est un widget et donc on lui indique ce que l'on veut à l'intérieur
          ),
        ), // elevatedbutton un simple bouton
        // Spacer(), //le spacer va creer un espace entre les deux boutons
        Column(
          children: [
            Divider(
                thickness:
                    1.5), //divider est le trait permettant de diviser et de faire un espace entre mes deux bouttons
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Ou"),
            ),
            Divider(
              thickness: 1.5,
            )
          ],
        ),
        // Padding(
        //   padding: EdgeInsets.symmetric(vertical: 15),
        //   child: TextField(
        //     decoration: InputDecoration(
        //         hintText: "Nom"), //textfield est un champ de texte
        //   ),
        // ),

        Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                print("le bouton > en tant qu'invité à été appuyé !");
              },
              child: Text("Continuer en tant qu'invité"),
            )),
      ],
    );
  }
}
