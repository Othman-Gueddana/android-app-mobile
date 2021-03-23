import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sonede/widgets/rounded-button.dart';
import 'package:sonede/widgets/text-input.dart';
import 'package:sonede/widgets/password-input.dart';
import 'package:sonede/widgets/background-image.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String _email, _password, _nameAndLastName, _phone, _cin, _adresse;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Inscription"),
        ),
        body: Stack(
          children: [
            BackgroundImage(
              image: "assets/images/crop.jpg",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      TextInput(
                        icon: FontAwesomeIcons.solidEnvelope,
                        hint: 'Email*',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                        onChanged: (value) {
                          setState(
                            () {
                              this._email = value;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      PasswordInput(
                          icon: FontAwesomeIcons.lock,
                          hint: 'Mot de passe*',
                          inputAction: TextInputAction.done,
                          onChanged: (value) {
                            setState(() {
                              this._password = value;
                            });
                          }),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      PasswordInput(
                          icon: FontAwesomeIcons.lock,
                          hint: 'Resaisir mot de passe*',
                          inputAction: TextInputAction.done,
                          onChanged: (value) {
                            setState(() {
                              this._password = value;
                            });
                          }),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      TextInput(
                        icon: FontAwesomeIcons.user,
                        hint: 'Nom et Prénom*',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                        onChanged: (value) {
                          setState(
                            () {
                              this._nameAndLastName = value;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      TextInput(
                        icon: FontAwesomeIcons.idCard,
                        hint: 'CIN*',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                        onChanged: (value) {
                          setState(
                            () {
                              this._cin = value;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      TextInput(
                        icon: FontAwesomeIcons.university,
                        hint: 'Adresse',
                        inputType: TextInputType.streetAddress,
                        inputAction: TextInputAction.next,
                        onChanged: (value) {
                          setState(
                            () {
                              this._adresse = value;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      TextInput(
                        icon: FontAwesomeIcons.phone,
                        hint: 'Tel',
                        inputType: TextInputType.number,
                        inputAction: TextInputAction.next,
                        onChanged: (value) {
                          setState(
                            () {
                              this._phone = value;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      RoundedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/");
                        },
                        buttonText: "Enregistrer",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
