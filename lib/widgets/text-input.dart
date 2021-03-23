import 'package:flutter/material.dart';
import 'package:sonede/constants.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    Key key,
    @required this.icon,
    @required this.hint,
    @required this.inputType,
    @required this.inputAction,
    @required this.onChanged,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Function onChanged;

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[600].withOpacity(0.8),
          borderRadius: BorderRadius.circular(16)),
      child: TextField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          border: InputBorder.none,
          hintText: widget.hint,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              widget.icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          hintStyle: kBodyText,
        ),
        style: kBodyText,
        keyboardType: widget.inputType,
        textInputAction: widget.inputAction,
      ),
    );
  }
}
