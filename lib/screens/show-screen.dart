import 'package:flutter/material.dart';
import 'package:sonede/widgets/background-image.dart';
import 'package:sonede/widgets/rounded-button.dart';

class ShowScreen extends StatefulWidget {
  @override
  _ShowScreenState createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: <Widget>[
          BackgroundImage(image: "assets/images/earth.jpg"),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              title: Text('Accueil'),
            ),
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      RoundedButton(
                        buttonText: "Profile",
                        onPressed: () {
                          Navigator.pushNamed(context, "/profile");
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      RoundedButton(
                        buttonText: "Factures impayées",
                        onPressed: () {
                          Navigator.pushNamed(context, "/bills");
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      RoundedButton(
                        buttonText: "Les Demandes",
                        onPressed: () {
                          Navigator.pushNamed(context, "/requests");
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      RoundedButton(
                        buttonText: "Les Contrats",
                        onPressed: () {
                          Navigator.pushNamed(context, "/contracts");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
