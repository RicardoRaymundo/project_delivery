import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';

class PageRequest extends StatelessWidget {
  List<Map<String, String>> stops = [
    {'index': '1', 'neighborhood': 'Jaguaré', 'city': 'São Paulo'},
    {'index': '2', 'neighborhood': 'Rio Pequeno', 'city': 'São Paulo'},
    {'index': '3', 'neighborhood': 'Vila Yara', 'city': 'Osasco'},
    {'index': '4', 'neighborhood': 'Vila Yara', 'city': 'Osasco'},
    {'index': '5', 'neighborhood': 'Vila Yara', 'city': 'Osasco'},
    {'index': '6', 'neighborhood': 'Vila Yara', 'city': 'Osasco'},
    {'index': '7', 'neighborhood': 'Vila Yara', 'city': 'Osasco'},
    {'index': '8', 'neighborhood': 'Vila Yara', 'city': 'Osasco'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(UILabel.APP_TITLE),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text('R\$50,00'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Até a retirada'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('1,0km')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Até a retirada'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('1,0km')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Card(
                child: Container(
                  height: 250,
                  child: buildStops(this.stops)
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width: double.infinity,
                child: RaisedButton(
                  child: Text(
                    'Aceitar ou Recusar',
                    style: Theme.of(context).textTheme.button,
                  ),
                  onPressed: () {
                    //Navigator.popAndPushNamed(context, AppRouting.PAGE_MAIN);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => PageRegister()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStops(List<Map<String, String>> stops) {
    double diameter = 35;
    return ListView(
      children: stops.map((stop) {
        return Padding(
          padding: const EdgeInsets.all(13.0),
          child: Row(
            children: <Widget>[
              ClipOval(
                child: Container(
                  color: Colors.deepOrange,
                  height: diameter,
                  width: diameter,
                  child: Center(
                    child: Text(stop['index']),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(stop['neighborhood']),
                  Text(stop['city']),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
