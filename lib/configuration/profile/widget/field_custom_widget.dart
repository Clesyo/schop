import 'package:CShop/core/app_colors.dart';
import 'package:flutter/material.dart';

class FieldCustomWidget extends StatelessWidget {
  final Icon icon;

  const FieldCustomWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: AppColors.black.withOpacity(0.147),
              blurRadius: 7,
              spreadRadius: .5,
              offset: Offset(0, 3))
        ], color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: TextField(
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          decoration:
              InputDecoration(border: InputBorder.none, prefixIcon: icon),
        ),
      ),
    );
  }
}
