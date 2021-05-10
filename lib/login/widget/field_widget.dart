import 'package:flutter/material.dart';

import 'package:CShop/core/app_colors.dart';

class FieldWidget extends StatelessWidget {
  final String label;
  FieldWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: AppColors.lightBack,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: label,
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
