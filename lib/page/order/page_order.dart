import 'package:flutter/material.dart';
import 'package:use_flutter_project_matrix/page/order/page_order_point_one.dart';
import 'package:use_flutter_project_matrix/page/order/page_order_map.dart';
import 'package:use_flutter_project_matrix/ui/ui_label.dart';

class PageOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: UILabel.POINT_TAB,),
              Tab(text: UILabel.MAP_TAB,),
            ],
          ),
          title: Text(UILabel.ORDER_XXX),
        ),
        body: TabBarView(
          children: [
            /// Tabs da info do pedido e do mapa, respectivamente
            PageOrderPointOne(),
            PageOrderMap(),
          ],
        ),
      ),
    );
  }
}
