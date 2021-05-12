import 'package:CShop/core/app_colors.dart';
import 'package:CShop/core/app_icons.dart';
import 'package:flutter/material.dart';

class CardCategoryWidget extends StatefulWidget {
  CardCategoryWidget({Key? key}) : super(key: key);

  @override
  _CardCategoryWidgetState createState() => _CardCategoryWidgetState();
}

class _CardCategoryWidgetState extends State<CardCategoryWidget> {
  List<String> categories = [
    "Alcoólicas",
    "Não Alcoólicas",
    "Outras Mercadorias"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index)),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
                style: TextStyle(
                    color: selectedIndex == index ? Colors.black : Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.only(top: 10 / 4),
              height: 3,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
