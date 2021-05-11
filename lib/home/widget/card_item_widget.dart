import 'dart:ui';

import 'package:CShop/core/app_images.dart';
import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              child: Image.asset(AppImages.teste),
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
                    "Decrição",
                    style: TextStyle(color: Colors.white54),
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white54,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Text("19.00",
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 17)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber[800],
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber[800],
                    size: 10,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.amber[800],
                    size: 10,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.amber[800],
                    size: 10,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.amber[800],
                    size: 10,
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
        ));
  }
}
