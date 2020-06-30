import 'package:flutter/material.dart';

class TextFieldPersonalized extends StatelessWidget {
  final String hintText;

  final ValueChanged<String> onChanged;

  final Color borderSideColor;

  final bool obscureText;

  TextFieldPersonalized(
      {this.hintText,
      this.onChanged,
      this.borderSideColor,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textAlign: TextAlign.center,
      onChanged: this.onChanged,
      style: TextStyle(color: Colors.black),
      obscureText: this.obscureText,
      decoration: InputDecoration(
        hintText: this.hintText,
        hintStyle: TextStyle(color: Colors.black38),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: this.borderSideColor, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: this.borderSideColor, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
