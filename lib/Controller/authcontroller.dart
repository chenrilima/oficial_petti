import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:oficial_petti/Model/user.dart';


class AuthController extends GetxController {

  static AuthController get to => Get.find();

  FirebaseAuth auth = FirebaseAuth.instance;

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();
  String messageError = '';

  validateFields(context) async {

    String email = controllerEmail.text;
    String senha = controllerSenha.text;

    if (email.isNotEmpty && email.contains("@")) {
      if (senha.isNotEmpty) {

        Usuario usuario = Usuario();
        usuario.email = email;
        usuario.senha = senha;

        createUser(usuario, context);

      } else {
        messageError = "senha não pode ser vazia";
        AuthController.to.update();
      }
    } else {
      messageError = "Preencha seu E-mail com @";
      AuthController.to.update();
    }

  }

  createUser(Usuario usuario, context) async {

    FirebaseAuth auth = FirebaseAuth.instance;

    auth.createUserWithEmailAndPassword(
      email: usuario.email,
      password: usuario.senha,
    ).then((firebaseUser) {

      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HomeTela1(),
      //     )
      // );

    }).catchError((error) {
      print("Erro ao cadastrar o usuário: " + error.toString());
      AuthController.to.update();
    });
  }

}
