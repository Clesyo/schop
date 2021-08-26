import 'package:CShop/configuration/pages/widget/card_address_widget.dart';
import 'package:CShop/core/app_colors.dart';
import 'package:flutter/material.dart';

class ShippingAddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.backPrimary,
        title: Text("Endereço de envio"),
        centerTitle: true,
        actions: <Widget>[IconButton(icon: Icon(Icons.edit), onPressed: () {})],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            children: <Widget>[
              CardAddressWidget(
                label: "CEP",
                text: "66810-090",
              ),
              SizedBox(
                height: 10,
              ),
              CardAddressWidget(
                label: "Rua",
                text: "Santa Isabel, 1206,Santa Isabel, 1206",
              ),
              SizedBox(
                height: 10,
              ),
              CardAddressWidget(
                label: "Complemento",
                text: "Proximo ao Campo Pinheirense",
              ),
              SizedBox(
                height: 10,
              ),
              CardAddressWidget(
                label: "Cidade",
                text: "Belém",
              ),
              SizedBox(
                height: 10,
              ),
              CardAddressWidget(
                label: "Estado",
                text: "PA",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
