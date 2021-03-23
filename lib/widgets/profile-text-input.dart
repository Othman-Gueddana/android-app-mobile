import 'package:flutter/material.dart';

class ProfileTextInput extends StatefulWidget {
  const ProfileTextInput(
      {Key key,
      @required this.color,
      @required this.enabled,
      @required this.width,
      @required this.icon,
      @required this.hint,
      @required this.inputType,
      @required this.inputAction,
      @required this.onChanged,
      @required this.label})
      : super(key: key);

  final Color color;
  final IconData icon;
  final String hint;
  final String label;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Function onChanged;
  final double width;
  final bool enabled;

  @override
  _ProfileTextInputState createState() => _ProfileTextInputState();
}

class _ProfileTextInputState extends State<ProfileTextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
          color: widget.color.withOpacity(0.8),
          borderRadius: BorderRadius.circular(16)),
      child: TextField(
        enabled: widget.enabled,
        textInputAction: widget.inputAction,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            labelText: widget.label,
            labelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: widget.hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                widget.icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }
}
