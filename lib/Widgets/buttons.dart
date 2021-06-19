import 'package:flutter/material.dart';
import 'package:oficial_petti/Utils/appcolors.dart';

class Buttons extends StatelessWidget {

  Function onPressed;
  String text;


  Buttons({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: AppColors.green,// background
          onPrimary: Colors.white, // foreground
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(8.0))
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}