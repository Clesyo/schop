import 'package:CShop/core/app_colors.dart';
import 'package:CShop/home/widget/card_category_widget.dart';
import 'package:CShop/home/widget/card_detail_order_widget.dart';
import 'package:CShop/models/orders.dart';
import 'package:flutter/material.dart';

class OrderFragment extends StatelessWidget {
  List<Orders> orders = Orders.orders;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        child: Column(
          children: <Widget>[
            CardCategoryWidget(
              list: [
                "Todas",
                "Completo",
                "Pendente",
                "Processando",
                "Cancelado"
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: orders.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) =>
                  CardDetailOrderWidget(
                order: orders[index],
              ),
            ))
          ],
        ));
  }
}
