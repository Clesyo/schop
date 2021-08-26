import 'package:CShop/core/app_colors.dart';
import 'package:flutter/material.dart';

class CardAddressWidget extends StatelessWidget {
  final String label, text;
  const CardAddressWidget({Key? key, required this.label, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: AppColors.black.withOpacity(0.147),
                blurRadius: 7,
                spreadRadius: .5,
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
