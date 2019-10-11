import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/page/page_register_vehicle.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';

class PageToken extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[this.header(), this.form(context)],
          ),
        ),
      ),
    );
  }

  Widget header() => Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('Digite o token recebido'),
          SizedBox(height: 20.0),
        ],
      );

  Widget form(BuildContext context) => Flexible(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: UILabel.TOKEN,
                  labelText: UILabel.TOKEN,
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text(UILabel.NEXT, style: Theme.of(context).textTheme.button),
                onPressed: () {
                  //Navigator.popAndPushNamed(context, AppRouting.PAGE_MAIN);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageRegisterVehicle()));
                },
              ),
            ),
          ],
        ),
      );
}
