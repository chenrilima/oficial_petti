import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Curriculum extends StatefulWidget {
  @override
  _CurriculumState createState() => _CurriculumState();
}

class _CurriculumState extends State<Curriculum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form (
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "CRMV"
              ),
              // ignore: missing_return
              validator: (text){
                if (text.isEmpty) return "Preencha!";
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Especialidades"
              ),
              // ignore: missing_return
              validator: (text){
                if (text.isEmpty) return "Preencha";
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Cidade"
              ),
              // ignore: missing_return
              validator: (text){
                if (text.isEmpty) return "Preencha";
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Estado"
              ),
              // ignore: missing_return
              validator: (text){
                if (text.isEmpty) return "Preencha ";
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Descrição do Perfil"
              ),
              // ignore: missing_return
              validator: (text){
                if (text.isEmpty) return "Preencha ";
              },
            ),

            SizedBox(height: 60.0),
            Column(
          children: [
          ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color(0xff00C29D),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              )
          ),
          child: Text("Carregar Foto"),
          onPressed: () {},
        ),
      ]
            ),

            SizedBox(height: 10.0),
            Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff00C29D),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),

                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        )
                    ),
                    child: Text("Cadastrar CV"),
                    onPressed: () {},
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
