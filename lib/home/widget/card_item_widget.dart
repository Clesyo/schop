import 'dart:ui';

import 'package:CShop/core/app_colors.dart';
import 'package:CShop/core/app_images.dart';
import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .6,
        height: 300,
        child: Card(
          color: Colors.black26,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset(AppImages.teste)],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Descrição do produto",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                children: [
                  Text("19.0",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 17,
                          fontWeight: FontWeight.w900)),
                ],
              ),
            )
          ]),
        ));
  }
}
