import 'package:flutter/material.dart';

class Bills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Factures impayées",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
