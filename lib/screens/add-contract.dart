import 'package:flutter/material.dart';
import 'package:sonede/widgets/rounded-button.dart';

class AddContract extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Ajouter un Contrat"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(border: Border.all()),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      labelText: "Contrat N°:",
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
                onPressed: () {
                  Navigator.of(context).pop("/contracts");
                },
                buttonText: "Valider",
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
