import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {

  Widget content;
  double width;

  ContainerCard({this.content,
    this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        child: content,
      ),
    );
  }
}
