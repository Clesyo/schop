import 'package:CShop/core/app_icons.dart';
import 'package:CShop/home/widget/card_category_widget.dart';
import 'package:CShop/home/widget/card_item_widget.dart';
import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: [
            Container(
              height: 80,
              child: ListView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardCategoryWidget(label: "Oculos", icon: AppIcons.oculus),
                  SizedBox(
                    width: 5,
                  ),
                  CardCategoryWidget(label: "Relogios", icon: AppIcons.clock),
                  SizedBox(
                    width: 5,
                  ),
                  CardCategoryWidget(label: "Makeup", icon: AppIcons.makeup),
                  SizedBox(
                    width: 5,
                  ),
                  CardCategoryWidget(label: "Joias", icon: AppIcons.colar),
                ],
              ),
            ),
          ],
        ));
  }
}
