import 'package:flutter/material.dart';

void main() {
  runApp(Wassimus());
}

class Wassimus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application de wassim",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wassims little app"),
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText:
                      "Tapez votre nom"), //textfield est un champ de texte
            ),
            TextField(
              decoration: InputDecoration(hintText: "Mot de passe"),
              obscureText:
                  true, //obscureText permet de chacher le texte c'est un booleen donc true or false
            ),
            Row(
              children: [
                //iciavec row je fais une sorte de container horizontale avec comme enfant les deux widget bouton que j'ai crée précédement
                ElevatedButton(
                  onPressed: boutonLoginAppuyer,
                  child: Text(
                      "Login"), //child est un widget et donc on lui indique ce que l'on veut à l'intérieur
                ), // elevatedbutton un simple bouton
                Spacer(), //le spacer va creer un espace entre les deux boutons
                ElevatedButton(
                  onPressed: () {
                    print(
                        "le bouton continuer en tant qu'invité à été appuyé !");
                  },
                  child: Text("Continuer en tant qu'invité"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void boutonLoginAppuyer() {
    print("le bouton à été appuyé bravo");
  }
}
