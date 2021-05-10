import 'package:CShop/core/app_colors.dart';
import 'package:CShop/core/app_icons.dart';
import 'package:flutter/material.dart';

class CardCategoryWidget extends StatelessWidget {
  final String label;
  final String icon;
  CardCategoryWidget({Key? key, required this.label, required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ClipRRect(
              child: Image.asset(
                icon,
                width: 30,
                height: 30,
              ),
            ),
          ),
          Text(
            label,
            style: TextStyle(color: Colors.white54),
          )
        ],
      ),
    ));
  }
}
