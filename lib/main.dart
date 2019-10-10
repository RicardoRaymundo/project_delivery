import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:use_flutter_project_matrix/app/app_behavior.dart';
import 'package:use_flutter_project_matrix/app/app_routing.dart';
import 'package:use_flutter_project_matrix/page/page_historic.dart';
import 'package:use_flutter_project_matrix/theme/theme_config.dart';
import 'package:use_flutter_project_matrix/theme/theme_select.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';


void main() {
  //Configura a orientação inical da aplicação
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(

    /// Configura o tema inical da aplicação
    ThemeConfig(
      initialTheme: ThemeAspect.DARK,
      child: Main(),
    ),
  );
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: UILabel.APP_TITLE,
      theme: ThemeConfig.of(context),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        /// Retira effeito de 'barriga' no fim de scroll
        return ScrollConfiguration(
          behavior: AppBehavior(),
          child: child,
        );
      },

      home: Scaffold(
        //body: PageSplashScreen(),
        body: PageHistoric(),
      ),
      routes: AppRouting.routes(),
    );
  }
}
