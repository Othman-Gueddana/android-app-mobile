import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sonede/widgets/data/user.dart';
import 'package:sonede/widgets/profile-text-input.dart';
import 'package:sonede/widgets/rounded-button.dart';

class Profile extends StatefulWidget {
  final User users;
  Profile({Key key, this.users}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Color color2 = Colors.blue[900];
  bool changePassword = false;
  bool changeAccount = false;
  double opacity = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text("Profile"),
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () {
                      setState(() {
                        this.changeAccount = !changeAccount;
                        if (this.color2 == Colors.grey[600]) {
                          this.color2 = Colors.blue[900];
                        } else {
                          this.color2 = Colors.grey[600];
                        }
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Modifier compte",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: size.height * 0.03,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.mode_edit,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  ProfileTextInput(
                      color: color2,
                      enabled: changeAccount,
                      width: size.width * 1,
                      icon: FontAwesomeIcons.user,
                      hint: "${users.map((e) => e.nomEtPrenom).single}",
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                      onChanged: () {},
                      label: "Nom et Prénom"),
                  SizedBox(height: size.height * 0.01),
                  ProfileTextInput(
                      color: color2,
                      enabled: changeAccount,
                      width: size.width * 1,
                      icon: FontAwesomeIcons.university,
                      hint: "${users.map((e) => e.adresse).single}",
                      inputType: TextInputType.streetAddress,
                      inputAction: TextInputAction.next,
                      onChanged: () {},
                      label: "Adresse"),
                  SizedBox(height: size.height * 0.01),
                  ProfileTextInput(
                      color: color2,
                      enabled: changeAccount,
                      width: size.width * 1,
                      icon: FontAwesomeIcons.phone,
                      hint: "${users.map((e) => e.tel).single}",
                      inputType: TextInputType.phone,
                      inputAction: TextInputAction.done,
                      onChanged: () {},
                      label: "Tel"),
                  Divider(
                      endIndent: size.width * 0.2,
                      color: Colors.blue[900],
                      thickness: size.width * 0.01,
                      height: size.height * 0.02),
                  InkWell(
                    onTap: () {
                      setState(() {
                        this.changePassword = !changePassword;
                        if (this.opacity == 0) {
                          this.opacity = 1;
                        } else {
                          this.opacity = 0;
                        }
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Changer mot de passe",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: size.height * 0.03,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.mode_edit,
                          color: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    onChanged: (text) {
                      print("First text field: $text");
                    },
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    enabled: changePassword,
                    decoration: InputDecoration(
                        disabledBorder: InputBorder.none,
                        labelText: "Ancien mot de passe",
                        labelStyle: TextStyle(
                            color: Colors.black.withOpacity(opacity),
                            fontWeight: FontWeight.bold),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(opacity))),
                  ),
                  TextField(
                    onChanged: (text) {
                      print("First text field: $text");
                    },
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    enabled: changePassword,
                    decoration: InputDecoration(
                        disabledBorder: InputBorder.none,
                        labelText: "Nouveau mot de passe",
                        labelStyle: TextStyle(
                            color: Colors.black.withOpacity(opacity),
                            fontWeight: FontWeight.bold),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(opacity))),
                  ),
                  RoundedButton(
                    buttonText: "Enregistrer",
                    onPressed: () {
                      Navigator.pop(context, "/showScreens");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
