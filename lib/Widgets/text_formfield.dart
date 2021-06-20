import 'package:flutter/material.dart';
import 'package:oficial_petti/Utils/appcolors.dart';

class TextFormFields extends StatelessWidget {

  Function onChanged;
  String hintText;

  TextFormFields({this.onChanged,
    this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
            filled: true,
            border: OutlineInputBorder(),
            hintText: hintText,
        ),
        onChanged: onChanged,
      ),
    );
  }
}