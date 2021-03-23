import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({
    Key key,
    @required this.value,
    @required this.hint,
    @required this.items,
    @required this.change,
  }) : super(key: key);
  final String hint;
  final dynamic value;
  final List items;
  final Function change;
  @override
  _DropdownButtonWidgetState createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: DropdownButton(
          dropdownColor: Colors.grey,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          isExpanded: true,
          hint:
              Text(widget.hint, style: TextStyle(fontWeight: FontWeight.bold)),
          value: widget.value,
          onChanged: widget.change,
          items: widget.items,
        ),
      ),
    );
  }
}
