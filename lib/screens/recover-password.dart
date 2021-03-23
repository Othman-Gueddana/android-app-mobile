import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sonede/widgets/background-image.dart';
import 'package:sonede/widgets/rounded-button.dart';
import 'package:sonede/widgets/text-input.dart';

class RecoverPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          "Mot de passe oublié",
          style: TextStyle(fontSize: 12),
        ),
      ),
      body: Stack(children: [
        BackgroundImage(
          image: "assets/images/crop.jpg",
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextInput(
                  icon: FontAwesomeIcons.solidEnvelope,
                  hint: "Saisir l'adresse mail",
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.done,
                  onChanged: (value) {}),
              SizedBox(
                height: size.height * 0.05,
              ),
              RoundedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/");
                },
                buttonText: "Valider",
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
