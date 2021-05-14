import 'package:CShop/core/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:CShop/models/products.dart';

import 'cart_counter_widget.dart';
import 'poduct_title_image_widget.dart';

class DetailBodyWidget extends StatelessWidget {
  final Product product;
  const DetailBodyWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.5),
                  height: 400,
                  decoration: BoxDecoration(
                      color: AppColors.backPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      margin: EdgeInsets.only(top: 50),
                      child: Row(
                        children: [
                          Text(
                            "Informe a quantidade:",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CartCounterWidget(),
                          Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 80.0, horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                            height: 50,
                            width: 58,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white)),
                            child: IconButton(
                                icon: Icon(
                                  Icons.add_shopping_cart_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                onPressed: () {}),
                          ),
                          Expanded(
                            child: SizedBox(
                                height: 50,
                                child: FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18)),
                                  color: Colors.white,
                                  onPressed: () {},
                                  child: Text(
                                    "Fechar compra".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
                ProductTitleImageWidget(
                  product: product,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
