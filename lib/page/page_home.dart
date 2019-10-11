import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/page/order/page_order.dart';
import 'package:use_flutter_project_matrix/page/page_historic.dart';
import 'package:use_flutter_project_matrix/page/page_request.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';

/// Página que exibe o histórico de entregas
class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int _bottombarTabIndex = 0;

  ///Lista de paginas que a bottombar acessa
  final List<Widget> _children = [];

  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height + 133) - MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('HOME'),
              SizedBox(height: height),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: RaisedButton(
                      child: Text('Ficar ocupado', style: Theme.of(context).textTheme.button),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      child: Text('Ficar disponível', style: Theme.of(context).textTheme.button),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _bottombarTabIndex, // new
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(UILabel.BOTTOMBAR_HOME),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text(UILabel.BOTTOMBAR_DELIVERIES),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text(UILabel.BOTTOMBAR_PROFILE))
        ],
      ),
    );
  }

  /// altera o index da bottombar
  void onTabTapped(int index) {
    setState(() {
      _bottombarTabIndex = index;
      switch (index) {
        case 0:
          Navigator.push(context, MaterialPageRoute(builder: (context) => PageRequest()));
          break;

        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (context) => PageHistoric()));
          break;
      }
    });
  }
}
