import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/page/page_login.dart';
import 'package:use_flutter_project_matrix/page/page_main.dart';
import 'package:use_flutter_project_matrix/page/page_welcome.dart';
import 'package:use_flutter_project_matrix/ui/ui_image.dart';

import '../data/data.dart';


/// A classe PageSplashScreen é responsavel pela apresentação inicial da logo da aplicação
class PageSplashScreen extends StatefulWidget {
  @override
  _PageSplashScreenState createState() => _PageSplashScreenState();
}

// TODO:: Implmentar lógica de identifcação de usuário
// TODO:: Carrega dados da aplicação
class _PageSplashScreenState extends State<PageSplashScreen> {
  final bool isLogged = false;

  @override
  void initState() {
    super.initState();

    /// Método de delay e navegação criado fora do initState
    Data.generate(this.onDoneLoading);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            child: Image.asset(UiImage.APP_LOGO),
          ),
        ));
  }

  /// Método que será chamado após o delay
  /// Verifica o status de login e decide para qual página irá navegar
  void onDoneLoading() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => isLogged ? PageMain() : PageWelcome()));
  }
}
