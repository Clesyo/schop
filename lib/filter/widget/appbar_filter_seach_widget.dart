import 'package:CShop/filter/filter_search_page.dart';
import 'package:flutter/material.dart';

class AppBarFilterSearchWidget extends StatelessWidget {
  const AppBarFilterSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 45,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: TextField(
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Busca"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
