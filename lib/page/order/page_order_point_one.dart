import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipe_button/swipe_button.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';

/// Página do pedido
class PageOrderPointOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        buildCard(
          iconData: Icons.location_on,
          title: UILabel.ADRESS,
          description: 'Rua das rosas, 123 - Sala 324 Bairro 1, Cidade 2'
        ),
        buildCard(
            iconData: Icons.receipt,
            title: UILabel.INSTRUCTIONS,
            description: 'Pegar documentos com Camila'
        ),
        buildCard(
            iconData: Icons.person,
            title: UILabel.CLIENT,
            description: 'Camila Santos'
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SwipeButton(
            thumb: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                    widthFactor: 0.10,
                    child: Icon(
                      Icons.chevron_right,
                      size: 60.0,
                      color: Colors.white,
                    )),
              ],
            ),
            content: Center(
              child: Text(
                UILabel.ARRIVED,
                style: TextStyle(color: Colors.white),
              ),
            ),
            onChanged: (result) {
              /// TODO :: Implementar lógica do swipe
              if (result == SwipePosition.SwipeRight) {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => PageHistoric()));
              } else {}
            },
          ),
        ),
      ],
    );
  }

  /// Cria os cards de com as informações do pedido
  Widget buildCard({IconData iconData, String title, String description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
      child: Card(
        child: Container(
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(iconData),
              ),
              Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(title),
                    SizedBox(height: 5,),
                    Text(description),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
