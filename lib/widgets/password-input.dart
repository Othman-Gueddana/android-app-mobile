import 'package:flutter/material.dart';
import 'package:sonede/constants.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputAction,
    @required this.onChanged,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;
  final Function onChanged;
  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[600].withOpacity(0.8),
          borderRadius: BorderRadius.circular(16)),
      child: TextField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          border: InputBorder.none,
          hintText: widget.hint,
          suffixIcon: InkWell(
            onTap: _togglePasswordView,
            child: Icon(
              Icons.visibility,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              widget.icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          hintStyle: kBodyText,
        ),
        obscureText: isHiddenPassword,
        style: kBodyText,
        textInputAction: widget.inputAction,
      ),
    );
  }

  void _togglePasswordView() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}
