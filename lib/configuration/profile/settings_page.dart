import 'package:CShop/core/app_colors.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.backPrimary,
        title: Text("Definições"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
        child: Column(
          children: [
            buildCardSettings(context,
                icon: Icon(Icons.car_repair), label: "Endereço de entrega"),
            SizedBox(
              height: 10,
            ),
            buildCardSettings(context,
                icon: Icon(Icons.credit_card), label: "Endereço de cobrança"),
          ],
        ),
      ),
    );
  }

  Widget buildCardSettings(BuildContext context,
      {required Icon icon, required String label}) {
    return Container(
        height: 65,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: AppColors.black.withOpacity(0.147),
              blurRadius: 7,
              spreadRadius: .5,
              offset: Offset(0, 3))
        ], color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
              height: 50,
              color: Colors.grey,
              onPressed: () {},
              child: icon,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black),
              ),
            )
          ],
        ));
  }
}
