import 'package:CShop/core/app_colors.dart';
import 'package:flutter/material.dart';

class CardCategoryFilterWidget extends StatefulWidget {
  final List<String> list;

  const CardCategoryFilterWidget({Key? key, required this.list})
      : super(key: key);
  @override
  _CardCategoryFilterWidgetState createState() =>
      _CardCategoryFilterWidgetState();
}

class _CardCategoryFilterWidgetState extends State<CardCategoryFilterWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 40,
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
            Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(widget.list[index],
                    style: TextStyle(
                        color:
                            selectedIndex == index ? Colors.white : Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
