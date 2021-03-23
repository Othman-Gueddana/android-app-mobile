import 'package:flutter/material.dart';
import 'package:sonede/widgets/data/history-data.dart';

class HistoryDetailsScreen extends StatefulWidget {
  final HistoryData historyData;

  HistoryDetailsScreen({this.historyData});

  @override
  _HistoryDetailsScreenState createState() => _HistoryDetailsScreenState();
}

class _HistoryDetailsScreenState extends State<HistoryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Historique'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Historique relèves:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      DataTable(
                          showBottomBorder: true,
                          columns: [
                            DataColumn(
                              label: Text(
                                'Période',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Ancien Index',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataColumn(
                                label: Text(
                              'Index',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            DataColumn(
                              label: Text(
                                'Consommation',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Estimation',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                          rows: historyData
                              .map(
                                (data) => DataRow(
                                  cells: [
                                    DataCell(Text(data.periode.toString())),
                                    DataCell(Text(data.ancienIndex.toString())),
                                    DataCell(Text(data.index.toString())),
                                    DataCell(
                                        Text(data.consommation.toString())),
                                    DataCell(Text(data.estimation.toString())),
                                  ],
                                ),
                              )
                              .toList()),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Historique Factures:",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    DataTable(
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                            label: Text(
                              'Période',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Référence',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                              label: Text(
                            'Type',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          DataColumn(
                            label: Text(
                              'Date limite \n de paiement',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Montant TTC',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                        rows: historyData
                            .map((data) => DataRow(cells: [
                                  DataCell(Text(data.periode.toString())),
                                  DataCell(Text(data.refernece.toString())),
                                  DataCell(Text(data.type)),
                                  DataCell(Text(data.dateLimiteDePaiement)),
                                  DataCell(Text(data.montantTTC.toString())),
                                ]))
                            .toList())
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
