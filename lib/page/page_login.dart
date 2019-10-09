import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:use_flutter_project_matrix/app/app_routing.dart';
import 'package:use_flutter_project_matrix/page/page_register.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';
import 'package:use_flutter_project_matrix/ui/ui_svg.dart';

class PageLogin extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(UILabel.LOGIN_APPBAR),
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

  Widget header() =>
      Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text(UILabel.CELL_NUMBER),
          SizedBox(height: 20.0),
        ],
      );

  Widget form(BuildContext context) =>
      Flexible(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: UILabel.TYPE_CELL_NUMBER,
                  labelText: UILabel.CELL,
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: RaisedButton(
                child: Text(
                  UILabel.NEXT,
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
          ],
        ),
      );
}
