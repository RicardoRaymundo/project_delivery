import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/page/page_main.dart';


class AppRouting{
  static const String PAGE_MAIN = 'pageMain';

  static Map<String, WidgetBuilder> routes() {
    return {
      /// Rotas do app
      PAGE_MAIN: (BuildContext context) => PageMain(),
    };
  }
}
