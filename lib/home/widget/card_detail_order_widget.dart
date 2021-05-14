import 'package:flutter/material.dart';

import 'package:CShop/models/orders.dart';

class CardDetailOrderWidget extends StatelessWidget {
  final Orders order;
  const CardDetailOrderWidget({
    Key? key,
    required this.order,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "Nº Pedido: "),
                    TextSpan(
                        text: order.nunOrder.toString(),
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ])),
                  Text(order.status, style: TextStyle(color: Colors.blueAccent))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "Data: "),
                    TextSpan(
                        text: order.date,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ])),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(text: "Total: "),
                    TextSpan(
                        text: "R\$ ${order.total}",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ])),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
