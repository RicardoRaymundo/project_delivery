import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:use_flutter_project_matrix/app/app_routing.dart';
import 'package:use_flutter_project_matrix/page/order/page_order.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';
import 'package:use_flutter_project_matrix/ui/ui_svg.dart';

class PageRegister extends StatefulWidget {
  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(UILabel.REGISTER_APPBAR),
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
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: UILabel.TYPE_FULL_NAME,
                labelText: UILabel.FULL_NAME,
              ),
            ),
          ),
          Container(
            padding: _edgeInsets,
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: UILabel.TYPE_EMAIL,
                labelText: UILabel.EMAIL,
              ),
            ),
          ),
          Container(
            padding: _edgeInsets,
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: UILabel.TYPE_CPF,
                labelText: UILabel.CPF,
              ),
            ),
          ),
          Container(
            padding: _edgeInsets,
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: UILabel.TYPE_CITY,
                labelText: UILabel.CITY,
              ),
            ),
          ),
          Container(
            padding: _edgeInsets,
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: UILabel.TYPE_VEHICLE,
                labelText: UILabel.VEHICLE,
              ),
            ),
          ),
          SizedBox(height: height),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageOrder()));
              },
            ),
          ),
        ],
      ),
    );
  }

}
