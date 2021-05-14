import 'package:flutter/material.dart';

import 'package:CShop/core/app_colors.dart';
import 'package:CShop/core/app_icons.dart';

class CardCategoryWidget extends StatefulWidget {
  final List<String> list;
  CardCategoryWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  _CardCategoryWidgetState createState() => _CardCategoryWidgetState();
}

class _CardCategoryWidgetState extends State<CardCategoryWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.list.length,
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
            Text(widget.list[index],
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
