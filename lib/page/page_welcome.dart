import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/page/page_login.dart';
import 'package:use_flutter_project_matrix/page/page_register.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';

class PageWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 350,
            width: double.infinity,
            color: Colors.orange,
            child: Center(child: Text('IMAGEM AQUI')),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text(
                  UILabel.ENTER,
                  style: Theme
                      .of(context)
                      .textTheme
                      .button,
                ),
                onPressed: () {
                  //Navigator.popAndPushNamed(context, AppRouting.PAGE_MAIN);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageLogin()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 30.0, left: 45.0, right: 45.0),
            child: Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text(
                  UILabel.REGISTER,
                  style: Theme
                      .of(context)
                      .textTheme
                      .button,
                ),
                onPressed: () {
                  //Navigator.popAndPushNamed(context, AppRouting.PAGE_MAIN);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageRegister()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
