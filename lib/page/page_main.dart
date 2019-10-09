import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';

class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: UILabel.APP_TITLE,
      home: Scaffold(
        appBar: AppBar(
          title: Text(UILabel.APP_TITLE),
        ),
        body: Container(
          color: Colors.red,
          child: Center(
            child: Text('PAGE MAIN!'),
          ),
        ),
      ),
    );
  }
}
