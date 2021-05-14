import 'package:CShop/core/app_colors.dart';
import 'package:CShop/models/products.dart';
import 'package:flutter/material.dart';

import 'widget/detail_body_widget.dart';

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.backPrimary,
      ),
      body: DetailBodyWidget(
        product: product,
      ),
    );
  }
}
