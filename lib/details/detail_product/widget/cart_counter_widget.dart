import 'package:flutter/material.dart';

class CartCounterWidget extends StatefulWidget {
  @override
  _CartCounterWidgetState createState() => _CartCounterWidgetState();
}

class _CartCounterWidgetState extends State<CartCounterWidget> {
  int nunOffItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: buildOutlineButton(
              icon: Icons.remove,
              press: () {
                if (nunOffItems > 1) {
                  setState(() {
                    nunOffItems--;
                  });
                }
              }),
        ),
        Text(
          nunOffItems.toString().padLeft(2, "0"),
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: buildOutlineButton(
              icon: Icons.add,
              press: () {
                setState(() {
                  nunOffItems++;
                });
              }),
        )
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        borderSide: BorderSide(color: Colors.white),
        padding: EdgeInsets.zero,
        onPressed: press,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
