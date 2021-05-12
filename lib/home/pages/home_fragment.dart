import 'package:CShop/core/app_icons.dart';
import 'package:CShop/detail/detail_page.dart';
import 'package:CShop/home/widget/card_category_widget.dart';
import 'package:CShop/home/widget/card_item_widget.dart';
import 'package:CShop/models/products.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    List<Product> products = Product.products;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
        child: Column(
          children: [
            CardCategoryWidget(),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.67,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) => CardItemWidget(
                        product: products[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(product: products[index]))),
                      )),
            ))
          ],
        ));
  }
}
