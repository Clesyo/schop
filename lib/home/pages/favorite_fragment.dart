import 'package:CShop/home/widget/card_favorite_widget.dart';
import 'package:CShop/models/products.dart';
import 'package:flutter/material.dart';

class FavoriteFrangment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> products = Product.products;
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.67,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemBuilder: (context, index) => CardFavoriteWidget(
                product: products[index],
              )),
    );
  }
}
