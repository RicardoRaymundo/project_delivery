import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';

/// Página que exibe o histórico de entregas
class PageHistoric extends StatefulWidget {
  @override
  _PageHistoricState createState() => _PageHistoricState();
}

class _PageHistoricState extends State<PageHistoric> {

  String _currentlySelected;

  //Lista de entregas
  List<Map<String, String>> deliveries = [
    {'value': 'R\$40', 'day': '20/01', 'delivery': '#12984'},
    {'value': 'R\$50', 'day': '20/01', 'delivery': '#12985'},
    {'value': 'R\$30', 'day': '21/01', 'delivery': '#12986'},
    {'value': 'R\$45', 'day': '21/01', 'delivery': '#12987'},
    {'value': 'R\$48', 'day': '21/01', 'delivery': '#12988'},
    {'value': 'R\$34', 'day': '22/01', 'delivery': '#12989'},
    {'value': 'R\$41', 'day': '22/01', 'delivery': '#12990'},
    {'value': 'R\$60', 'day': '23/01', 'delivery': '#12991'},
  ];

  /// Lista de valores do dropdown
  final List<String> _dropdownValues = ["Janeiro 2020", "Fevereiro 2020", "Março 2020", "Abril 2020", "Maio 2020"];

  int _bottombarTabIndex = 0;
  ///Lista de paginas que a bottombar acessa
  final List<Widget> _children = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(UILabel.DELIVERIES),
        actions: <Widget>[
          //Add the dropdown widget to the `Action` part of our appBar. it can also be among the `leading` part
          dropdownWidget(),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              child: Center(child: Text('R\$1.500,00')),
            ),
            Container(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      children: <Widget>[
                        Text(UILabel.VALUE),
                        Spacer(),
                        Text(UILabel.DAY),
                        Spacer(),
                        Text(UILabel.DELIVERY),
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              child: ListView.separated(
                separatorBuilder: (context, index) => Container(
                  height: 2,
                  color: Colors.white,
                ),
                itemCount: deliveries.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 5),
                      child: Row(
                        children: <Widget>[
                          Text(deliveries[index]['value']),
                          Spacer(),
                          Text(deliveries[index]['day']),
                          Spacer(),
                          Text(deliveries[index]['delivery']),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _bottombarTabIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(UILabel.BOTTOMBAR_HOME),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text(UILabel.BOTTOMBAR_DELIVERIES),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(UILabel.BOTTOMBAR_PROFILE)
          )
        ],
      ),
    );
  }

  /// altera o index da bottombar
  void onTabTapped(int index) {
    setState(() {
      _bottombarTabIndex = index;
    });
  }

  /// Método que cria o botão dropdown
  Widget dropdownWidget() {
    _currentlySelected = _dropdownValues.first;
    /// Classe que faz com que o(s) DropdownButton não tenha a linha padrão do botão
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        /// Mapeia cada valor da lista para as as opções do DropdownButton
        items: _dropdownValues
            .map((value) => DropdownMenuItem(
                  child: Text(value),
                  value: value,
                ))
            .toList(),
        onChanged: (String value) {
          /// Muda o value do botão
          setState(() {
            _currentlySelected = value;
            print(value);
            print(value);
          });
        },
        isExpanded: false,
        /// valor default do dropdown
        value: _currentlySelected ,
      ),
    );
  }
}
