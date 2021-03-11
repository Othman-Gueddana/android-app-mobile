import 'package:flutter/material.dart';
import 'package:sonede/widgets/data/contract.dart';

class HistoryDetailsScreen extends StatelessWidget {
  final Contract contract;

  HistoryDetailsScreen({this.contract});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historique'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [Text("${contract.adresse}")],
        ),
      ),
    );
  }
}
