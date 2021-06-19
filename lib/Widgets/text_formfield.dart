import 'package:flutter/material.dart';

class TextFormFields extends StatelessWidget {

  Function onChanged;
  String hintText;

  TextFormFields({this.onChanged,
    this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
      ),
      onChanged: onChanged,
    );
  }
}