import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sonede/widgets/background-image.dart';
import 'package:sonede/widgets/password-input.dart';
import 'package:sonede/widgets/rounded-button.dart';
import 'package:sonede/widgets/text-input.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: <Widget>[
          BackgroundImage(
            image: "assets/images/water2.jpg",
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.1,
                      child: Center(
                        child: Text(
                          "Paiement des factures",
                          style: kHeading,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/icons/clipart-removebg-preview.png",
                      width: size.width * 0.2,
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              TextInput(
                                  icon: FontAwesomeIcons.solidEnvelope,
                                  hint: 'Email',
                                  inputType: TextInputType.emailAddress,
                                  inputAction: TextInputAction.next,
                                  onChanged: (value) {
                                    setState(() {
                                      this._email = value;
                                    });
                                  }),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              PasswordInput(
                                  icon: FontAwesomeIcons.lock,
                                  hint: 'Password',
                                  inputAction: TextInputAction.done,
                                  onChanged: (value) {
                                    setState(() {
                                      this._password = value;
                                    });
                                  }),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              InkWell(
                                child: Text(
                                  "Mot de Passe oublié?",
                                  style: kBodyText,
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, "/recover");
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: size.height * 0.07,
                              ),
                              RoundedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "/showScreens");
                                },
                                buttonText: "Login",
                              ),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: InkWell(
                                  child: Text(
                                    'Créer un Nouveau Compte',
                                    style: kBodyText,
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, "/register");
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
