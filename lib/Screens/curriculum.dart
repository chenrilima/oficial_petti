import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oficial_petti/Widgets/buttons.dart';
import 'package:oficial_petti/Widgets/cards.dart';
import 'package:oficial_petti/Widgets/text_formfield.dart';

class Curriculum extends StatefulWidget {
  @override
  _CurriculumState createState() => _CurriculumState();
}

class _CurriculumState extends State<Curriculum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ContainerCard(
          width: 300,
          content: ListView(
            padding: EdgeInsets.all(16),
            children: [
              TextFormFields(
                hintText: 'test',
              ),
              TextFormFields(
                hintText: 'test',
              ),
                Buttons(
                  text: 'test',
                  onPressed: (){},
                )
              ]
          ),
          ),
        ),
      );
  }
}
