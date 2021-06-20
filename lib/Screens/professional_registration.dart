import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oficial_petti/Utils/appcolors.dart';
import 'package:oficial_petti/Widgets/background.dart';
import 'package:oficial_petti/Widgets/buttons.dart';
import 'package:oficial_petti/Widgets/cards.dart';
import 'package:oficial_petti/Widgets/text_formfield.dart';

class ProfessionalRegistration extends StatefulWidget {
  @override
  _ProfessionalRegistrationState createState() =>
      _ProfessionalRegistrationState();
}

class _ProfessionalRegistrationState extends State<ProfessionalRegistration> {


  @override
  Widget build(BuildContext context) {
    double widscreen = MediaQuery.of(context).size.width;
    return Background(
      title: 'Você esta á um passo de encontrar o emprego dos seus sonhos',
      content: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ContainerCard(
          width: widscreen *1,
          content: Container(
            padding: const EdgeInsets.all( 20.0),
            child: Column(
              children: [
                TextFormFields(
                  hintText: 'CRMV',
                ),
                TextFormFields(
                  hintText: 'Especialidades',
                ),
                TextFormFields(
                  hintText: 'Telefone',
                ),
                TextFormFields(
                  hintText: 'Gênero',
                ),
                TextFormFields(
                  hintText: 'Cidade',
                ),
                TextFormFields(
                  hintText: 'Estado',
                ),
                Buttons(
                  text: 'Cadastrar CV',
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
