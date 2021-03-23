import 'package:flutter/material.dart';
import 'package:sonede/widgets/rounded-button.dart';

class Paying extends StatefulWidget {
  @override
  _PayingState createState() => _PayingState();
}

class _PayingState extends State<Paying> {
  bool checkedValue1 = false;
  bool checkedValue2 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Paiement"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Montant Total A payer:",
                style: TextStyle(
                    color: Colors.blue[900], fontWeight: FontWeight.bold),
              ),
              Text("88.000"),
              SizedBox(height: size.height * 0.02),
              Text(
                "Date de paiement:",
                style: TextStyle(
                    color: Colors.blue[900], fontWeight: FontWeight.bold),
              ),
              Text(" 3/20/2021, 11:30:09 AM "),
              SizedBox(height: size.height * 0.02),
              CheckboxListTile(
                title: Text("E-Paiement postale"),
                value: checkedValue1,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue1 = newValue;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              SizedBox(height: size.height * 0.02),
              CheckboxListTile(
                title: Text("Paiement par carte bancaire"),
                value: checkedValue2,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue2 = newValue;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              SizedBox(height: size.height * 0.02),
              RoundedButton(
                  buttonText: "Valider",
                  onPressed: () {
                    Navigator.of(context).pop("/bills");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
