import 'package:CShop/models/item_order.dart';
import 'package:flutter/material.dart';

import 'package:CShop/models/order.dart';

class CardDetailOrderWidget extends StatefulWidget {
  final Order order;
  const CardDetailOrderWidget({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  _CardDetailOrderWidgetState createState() => _CardDetailOrderWidgetState();
}

class _CardDetailOrderWidgetState extends State<CardDetailOrderWidget> {
  final List<ItemOrder> _data = ItemOrder.itens;
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
                        text: widget.order.nunOrder.toString(),
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ])),
                  Text(widget.order.status,
                      style: TextStyle(color: Colors.blueAccent))
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
                        text: widget.order.date,
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
                        text: "R\$ ${widget.order.total}",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold))
                  ])),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ExpansionPanelList(
                expansionCallback: (int i, bool isOpen) {
                  setState(() {
                    widget.order.isExpanded = !isOpen;
                  });
                },
                children: [
                  ExpansionPanel(
                      headerBuilder: (context, isOpen) {
                        return ListTile(
                          title: Text("Mostar mais"),
                        );
                      },
                      body: ListTile(
                        title: Column(
                            children: _data.map<Container>((ItemOrder item) {
                          return widget.order.nunOrder == item.order.nunOrder
                              ? Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(item.product.name),
                                      Text(" --------------------------- "),
                                      Text(item.product.price.toString()),
                                    ],
                                  ),
                                )
                              : Container();
                        }).toList()),
                      ),
                      isExpanded: widget.order.isExpanded)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  buildButton("Acompanhar"),
                  SizedBox(
                    width: 5,
                  ),
                  buildButton("Mais informação")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(String label) {
    return FlatButton(
      color: Colors.grey,
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
  }
}
