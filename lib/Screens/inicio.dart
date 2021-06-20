import 'package:flutter/material.dart';
import 'package:oficial_petti/home.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Maior Plataforma PET",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            )),
        TextButton(
          child: Icon(Icons.filter_list),
          onPressed: () {},
          style: TextButton.styleFrom(primary: Colors.white),
        ),
        Text("Filtrar"),
        SizedBox(height: 140.0),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Beatriz'),
                subtitle: Text('Estudante de Veterinária'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Entrar em Contato'),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.photo_camera),
                title: Text('Ajudante'),
                subtitle: Text('Vaga sem exp'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Entrar em Contato'),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
