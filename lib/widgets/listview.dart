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
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/addContract");
              },
              child: Icon(Icons.add_circle, semanticLabel: "Ajouter Contart")),
        ],
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
            margin: EdgeInsets.all(6.0),
            color: Colors.blue[900].withOpacity(0.8),
            child: ListTile(
              leading: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.delete_forever,
                  color: Colors.red[900],
                  size: 40,
                ),
              ),
              title: Text(
                "${contract.nomEtPrenom}",
                style: kBodyText,
              ),
              subtitle: Text(
                "\nContrat N°: ${contract.contrat.toString()}",
                style: kBodyText,
              ),
              isThreeLine: true,
              trailing: Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
                size: 35,
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
