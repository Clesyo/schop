import 'package:flutter/material.dart';

import 'package:CShop/models/product.dart';

class ProductTitleImageWidget extends StatelessWidget {
  final Product product;
  const ProductTitleImageWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.name,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Preço\n",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "R\$ ${product.price}",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold))
              ])),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: Image.asset(
                product.image,
                fit: BoxFit.fitWidth,
              ))
            ],
          )
        ],
      ),
    );
  }
}
