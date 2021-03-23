import 'package:flutter/material.dart';
import 'package:sonede/widgets/data/unpayedBills.dart';
import 'package:sonede/widgets/rounded-button.dart';

class MyDataTableSource extends DataTableSource {
  MyDataTableSource(this.data);

  final List<Bills> data;

  @override
  DataRow getRow(int index) {
    if (index >= data.length) {
      return null;
    }
    return DataRow.byIndex(
      selected: data[index].selected,
      onSelectChanged: (selected) {
        data[index].selected = selected;

        notifyListeners();
      },
      index: index,
      cells: [
        DataCell(Text('${data[index].client}')),
        DataCell(Text('${data[index].contrat}')),
        DataCell(Text('${data[index].peridoe}')),
        DataCell(Text('${data[index].typeFacture}')),
        DataCell(Text('${data[index].dateLimite}')),
        DataCell(Text('${data[index].netApayer}')),
        DataCell(Text('${data[index].detail}')),
      ],
    );
  }

  @override
  int get selectedRowCount {
    return 0;
  }

  @override
  bool get isRowCountApproximate {
    return false;
  }

  @override
  int get rowCount {
    return data.length;
  }
}

class PaginatedTable extends StatefulWidget {
  @override
  _PaginatedTableState createState() => _PaginatedTableState();
}

class _PaginatedTableState extends State<PaginatedTable> {
  @override
  void initState() {
    List.from(data);
    super.initState();
  }

  var _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
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
          Container(
            child: SingleChildScrollView(
              child: PaginatedDataTable(
                sortColumnIndex: 0,
                sortAscending: _sortAscending,
                onSelectAll: (all) {
                  setState(() {
                    data.forEach((f) {
                      f.selected = all;
                    });
                  });
                },
                rowsPerPage: 5,
                columns: [
                  DataColumn(
                    label: Text(
                      'Client',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onSort: (index, sortAscending) {
                      setState(
                        () {
                          _sortAscending = sortAscending;
                          if (sortAscending) {
                            data.sort((a, b) => a.client.compareTo(b.client));
                          } else {
                            data.sort((a, b) => b.client.compareTo(a.client));
                          }
                        },
                      );
                    },
                  ),
                  DataColumn(
                      label: Text(
                    'Contrat',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    'péridoe',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    'type Facture',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    'date Limite\nde paiement',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  DataColumn(
                      label: Text(
                    'net A payer',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  DataColumn(label: Text('')),
                ],
                source: MyDataTableSource(data),
              ),
            ),
          ),
          RoundedButton(
            buttonText: "Paiement",
            onPressed: () {
              Navigator.pushNamed(context, "/paying");
            },
          ),
        ],
      ),
    );
  }
}
