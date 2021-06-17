import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' as g;



class Controller extends g.GetxController {

  static Controller get to => g.Get.find();

  TextEditingController controllerName = TextEditingController(text: "");
  TextEditingController controllerEmail = TextEditingController(text: "");
  String errorMessage = "";

  GlobalKey sectionSobreKey = GlobalKey();
  GlobalKey sectionDoneKey = GlobalKey();
  GlobalKey sectionReviewKey = GlobalKey();
  GlobalKey sectionContatoKey = GlobalKey();

  int validado = 0;

  bool validateFields() {
    String name = controllerName.text;
    String email = controllerEmail.text;

    print("email? $email");
    print("nome? $name");
    return name.isNotEmpty && email.isEmail;
  }

  void addLead() {
    if (Controller.to.validateFields()) {
      print('validou');

      Controller.to.validado = 1;
      Controller.to.update();

      Future.delayed(Duration(seconds: 2), () {
        Controller.to.validado = 0;
        Controller.to.update();
      });

      FirebaseFirestore firestore = FirebaseFirestore.instance;

      firestore.collection("leads").doc(Controller.to.controllerName.text).set({
        "nome": Controller.to.controllerName.text,
        "email": Controller.to.controllerEmail.text
      });
    } else {
      errorMessage = "Preencha seu nome";
      Controller.to.validado = 2;
      Controller.to.update();

      Future.delayed(Duration(seconds: 2), () {
        Controller.to.validado = 0;
        Controller.to.update();
      });

      print('nao validou');
    }
  }
}







