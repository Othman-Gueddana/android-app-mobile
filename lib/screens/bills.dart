import 'package:flutter/material.dart';
import 'package:sonede/widgets/paginated-table.dart';

class Bills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          "Factures impayées",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: PaginatedTable(),
    );
  }
}
