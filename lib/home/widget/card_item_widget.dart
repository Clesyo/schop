import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:CShop/core/app_colors.dart';
import 'package:CShop/core/app_images.dart';
import 'package:CShop/models/product.dart';

class CardItemWidget extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const CardItemWidget({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: AppColors.black.withOpacity(0.147),
                    blurRadius: 7,
                    spreadRadius: .5,
                    offset: Offset(0, 3))
              ],
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.asset(product.image),
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Text("R\$ ${product.price}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17)),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber[800],
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber[800],
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.amber[800],
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.amber[800],
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.amber[800],
                      size: 15,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "(10.0)",
                      style: TextStyle(color: Colors.white54, fontSize: 10),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
