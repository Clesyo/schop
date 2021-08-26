import 'package:CShop/configuration/pages/billing_address_page.dart';
import 'package:CShop/configuration/pages/shipping_address_page.dart';
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
                icon: Icon(Icons.car_repair),
                label: "Endereço de envio",
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShippingAddressPage()))),
            SizedBox(
              height: 10,
            ),
            buildCardSettings(context,
                icon: Icon(Icons.credit_card),
                label: "Endereço de cobrança",
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BillingAddressPage()))),
            buildCardSettings(context,
                icon: Icon(Icons.exit_to_app_sharp), label: "Sair", press: () {
              print("Sair");
            }),
          ],
        ),
      ),
    );
  }

  Widget buildCardSettings(BuildContext context,
      {required Icon icon,
      required String label,
      required VoidCallback press}) {
    return GestureDetector(
      onTap: press,
      child: Container(
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
              Container(
                width: 50,
                height: 50,
                child: icon,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
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
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}
