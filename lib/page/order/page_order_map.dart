import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipe_button/swipe_button.dart';
import 'package:use_flutter_project_matrix/app/app_routing.dart';

class PageOrderMap extends StatefulWidget {
  @override
  _PageOrderMapState createState() => _PageOrderMapState();
}

class _PageOrderMapState extends State<PageOrderMap> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SwipeButton(
          thumb: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                  widthFactor: 0.10,
                  child: Icon(
                    Icons.chevron_right,
                    size:5.0,
                    color: Colors.white,
                  )),
            ],
          ),
          content: Center(
            child: Text(
              'aa',
              style: TextStyle(color: Colors.white),
            ),
          ),
          onChanged: (result) {
            if (result == SwipePosition.SwipeRight) {
              //Navigator.pushNamed(context, AppRouting.PAGE_MAIN);
            } else {}
          },
        ),
      ),
    );
  }

}