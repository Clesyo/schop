import 'package:CShop/configuration/profile/widget/field_custom_widget.dart';
import 'package:flutter/material.dart';

class ProfileFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Nome:", style: TextStyle(fontWeight: FontWeight.bold)),
            FieldCustomWidget(
              icon: Icon(Icons.person),
            ),
            Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
            FieldCustomWidget(icon: Icon(Icons.email)),
            Text("Telefone:", style: TextStyle(fontWeight: FontWeight.bold)),
            FieldCustomWidget(icon: Icon(Icons.phone)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Salvar",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.white)),
                      ),
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
