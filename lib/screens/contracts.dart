import 'package:flutter/material.dart';
import 'package:sonede/widgets/listview.dart';

class Contracts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListViewTemplate(),
      ),
    );
  }
}
