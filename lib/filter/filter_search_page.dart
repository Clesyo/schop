import 'package:CShop/core/app_colors.dart';
import 'package:CShop/filter/widget/card_category_filter_widget.dart';
import 'package:flutter/material.dart';

class FilterSearchPage extends StatefulWidget {
  @override
  _FilterSearchPageState createState() => _FilterSearchPageState();
}

class _FilterSearchPageState extends State<FilterSearchPage> {
  goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  double _currentSliderValue = 20;
  bool _isValeu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColors.backPrimary,
        title: Center(child: Text("Filtro")),
        leading: IconButton(
            icon: Icon(Icons.close), onPressed: () => goBack(context)),
      ),
      body: Column(
        children: <Widget>[
          buildTitle("Categorias"),
          CardCategoryFilterWidget(
              list: ["Alcoólicas", "Não Alcoólicas", "Outras Mercadorias"]),
          SizedBox(
            height: 20.0,
          ),
          buildTitle("Tags"),
          CardCategoryFilterWidget(list: [""]),
          SizedBox(
            height: 20,
          ),
          buildTitle("Preço"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "R\$ 10",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "R\$ 100",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Slider(
              value: _currentSliderValue,
              activeColor: Colors.black,
              inactiveColor: Colors.grey,
              min: 0,
              max: 100,
              divisions: 10,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              }),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "A venda",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.black),
                ),
                Switch(
                    activeColor: Colors.black,
                    value: _isValeu,
                    onChanged: (bool valeu) {
                      setState(() {
                        _isValeu = valeu;
                      });
                    }),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(14),
                      primary: Colors.white,
                      backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text(
                    "Aplicar",
                    style: TextStyle(fontSize: 17),
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
