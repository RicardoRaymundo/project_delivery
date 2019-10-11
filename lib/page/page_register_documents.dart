import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/page/page_login.dart';
import 'package:use_flutter_project_matrix/page/page_register_mei.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';

class PageRegisterDocuments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de documentos'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[this.form(context)],
          ),
        ),
      ),
    );
  }

  EdgeInsets _edgeInsets = EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0);

  Widget form(BuildContext context) {
    double height = (MediaQuery.of(context).size.height + 133) - MediaQuery.of(context).size.height;
    return Flexible(
      child: ListView(
        children: <Widget>[
          Container(
            padding: _edgeInsets,
            child: RaisedButton(
              child: Text('RG', style: Theme.of(context).textTheme.button),
              onPressed: () {},
            ),
          ),
          Container(
            padding: _edgeInsets,
            child: RaisedButton(
              child: Text('CNH', style: Theme.of(context).textTheme.button),
              onPressed: () {},
            ),
          ),
          Container(
            padding: _edgeInsets,
            child: RaisedButton(
              child: Text('Comprovante de Residencia', style: Theme.of(context).textTheme.button),
              onPressed: () {},
            ),
          ),
          SizedBox(height: height),
          Container(
            width: double.infinity,
            child: RaisedButton(
              child: Text(UILabel.NEXT, style: Theme.of(context).textTheme.button),
              onPressed: () {
                //Navigator.popAndPushNamed(context, AppRouting.PAGE_MAIN);
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageRegisterMEI()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
