import 'package:flutter/material.dart';
import 'package:sonede/widgets/data/requests-data.dart';
import 'package:sonede/widgets/rounded-button.dart';

class Requests extends StatefulWidget {
  final RequestsData requestsData;
  Requests({this.requestsData});

  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
            "Les Demandes",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.02),
              Text(
                "   Glissez à droite >>>",
                style: TextStyle(color: Colors.redAccent),
              ),
              Divider(
                  endIndent: size.width * 0.2,
                  color: Colors.blue[900],
                  thickness: size.width * 0.01,
                  height: size.height * 0.02),
              Text(
                "Demandes en Cours:",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    DataTable(
                        dividerThickness: 2,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                            label: Text(
                              'Numéro',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Objet de \n la réclamation',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                              label: Text(
                            'Date creéation',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          DataColumn(
                            label: Text(
                              'Etape en cours',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Commentaire',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                        rows: requestsData
                            .map((user) => DataRow(cells: [
                                  DataCell(Text(user.numero)),
                                  DataCell(Text(user.objetdelareclamation)),
                                  DataCell(Text(user.datedecreation)),
                                  DataCell(Text(user.etapeencours)),
                                  DataCell(Text(user.commentaire)),
                                ]))
                            .toList()),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Text(
                "Demandes rejetées:",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(children: [
                  DataTable(
                      dividerThickness: 2,
                      showBottomBorder: true,
                      columns: [
                        DataColumn(
                          label: Text(
                            'Numéro',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Objet de \n la réclamation',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Date creéation',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Date de rejet',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Raison de rejet',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      rows: requestsData
                          .map((user) => DataRow(cells: [
                                DataCell(Text(user.numero)),
                                DataCell(Text(user.objetdelareclamation)),
                                DataCell(Text(user.datedecreation)),
                                DataCell(Text(user.etapeencours)),
                                DataCell(Text(user.commentaire)),
                              ]))
                          .toList()),
                ]),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/copmplaint");
                },
                buttonText: 'Ajouter une réclamation',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
