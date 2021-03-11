import 'package:flutter/material.dart';
import 'package:sonede/constants.dart';
import 'package:sonede/widgets/data/contract.dart';

class ListViewTemplate extends StatefulWidget {
  @override
  _ListViewTemplateState createState() => _ListViewTemplateState();
}

class _ListViewTemplateState extends State<ListViewTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contracts"),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: contracts.length,
        itemBuilder: (context, index) {
          Contract contract = contracts[index];
          return Card(
            color: Colors.blue[900],
            child: ListTile(
              leading: Icon(
                Icons.delete_forever,
                color: Colors.red[900],
                size: 35,
              ),
              title: Text(
                "Nom et Prénom: ${contract.nomEtPrenom}",
                style: kBodyText,
              ),
              subtitle: Text(
                "Contrat: ${contract.contrat.toString()}\nAdresse: ${contract.adresse}",
                style: kBodyText,
              ),
              isThreeLine: true,
              trailing: Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {
                Navigator.of(context).pushNamed("/history",
                    arguments: {'adresse': contract.adresse});
              },
            ),
          );
        },
      ),
    );
  }
}
