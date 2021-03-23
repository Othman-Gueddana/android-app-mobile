import 'package:flutter/material.dart';

import 'package:sonede/widgets/dropDown.dart';
import 'package:sonede/widgets/rounded-button.dart';

class ComplaintScreen extends StatefulWidget {
  @override
  _ComplaintScreenState createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  dynamic valueChoose;
  dynamic value2Choose;
  List adresse = [
    "24 rue Gafsa manzeh 5,Ariana",
    "rue kheireddine bacha korba,Nabeul"
  ];
  List complaintsType = [
    "Manque de pression",
    "Fuite colonnes montantes",
    "Fuite branchement",
    "Fuite compteur",
    "Fuite raccord",
    "Compteur mal placé",
    "Simulation montant facture"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          "Nouvelle réclamation",
          style: TextStyle(fontSize: 12),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonWidget(
                change: (value) {
                  setState(() {
                    valueChoose = value;
                  });
                },
                value: valueChoose,
                hint: "Type réclamation",
                items: complaintsType.map((type) {
                  return DropdownMenuItem(
                    value: valueChoose,
                    child: Text(type),
                  );
                }).toList(),
              ),
              SizedBox(height: size.height * 0.03),
              DropdownButtonWidget(
                change: (value) {
                  setState(() {
                    value2Choose = value;
                  });
                },
                value: valueChoose,
                hint: "Branchement",
                items: adresse.map((branchement) {
                  return DropdownMenuItem(
                    value: value2Choose,
                    child: Text(branchement),
                  );
                }).toList(),
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(border: Border.all()),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      labelText: "Commentaire",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: "",
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                buttonText: "Valider",
                onPressed: () {
                  Navigator.of(context).pop("/requests");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
