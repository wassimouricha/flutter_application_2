import 'package:flutter/material.dart';
import 'themes.dart';

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
        appBar: AppBar(
          title: Text("Wassim's app"),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 45),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                      hintText:
                          "Tapez votre nom"), //textfield est un champ de texte
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Mot de passe"),
                obscureText:
                    true, //obscureText permet de chacher le texte c'est un booleen donc true or false
              ),
              // Row(
              //   children: [
              //iciavec row je fais une sorte de container horizontale avec comme enfant les deux widget bouton que j'ai crée précédement
              Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: boutonLoginAppuyer,
                  child: Text(
                      "Login"), //child est un widget et donc on lui indique ce que l'on veut à l'intérieur
                ),
              ), // elevatedbutton un simple bouton
              // Spacer(), //le spacer va creer un espace entre les deux boutons
              Row(children: [
                 Expanded(child: Divider(thickness: 1.5,)) , //divider est le trait permettant de diviser et de faire un espace entre mes deux bouttons
                 Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                 child: Text("Ou"),),
                  Expanded(child: Divider(thickness: 1.5,))
              ],),
             
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      print("le bouton > en tant qu'invité à été appuyé !");
                    },
                    child: Text("Continuer en tant qu'invité"),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void boutonLoginAppuyer() {
    print("le bouton à été appuyé bravo");
  }
}
