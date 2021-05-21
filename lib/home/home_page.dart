import 'package:CShop/configuration/profile/settings_page.dart';
import 'package:CShop/core/app_colors.dart';
import 'package:CShop/filter/filter_search_page.dart';
import 'package:CShop/filter/widget/appbar_filter_seach_widget.dart';
import 'package:CShop/home/pages/favorite_fragment.dart';
import 'package:CShop/home/pages/home_fragment.dart';
import 'package:CShop/home/pages/order_fragment.dart';
import 'package:CShop/home/pages/profile_fragment.dart';
import 'package:CShop/home/pages/search_fragement.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> get _list_page => [
        HomeFragment(),
        FavoriteFrangment(),
        SearchFragment(),
        OrderFragment(),
        ProfileFragment()
      ];
  int _index = 0;
  void onTapTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (_index == 4)
          ? buildAppBarHome(
              barHeight: 80,
              color: AppColors.backPrimary,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage())),
                  tooltip: "Configuração",
                )
              ],
              title: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Bem - Vindo",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Text("Minha loja"),
                ],
              ),
            )
          : (_index == 2)
              ? buildAppBarHome(
                  barHeight: 80,
                  color: AppColors.backPrimary,
                  title: AppBarFilterSearchWidget(),
                  actions: <Widget>[
                    IconButton(
                        icon: Icon(Icons.filter_alt),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterSearchPage())))
                  ],
                )
              : buildAppBarHome(
                  barHeight: 80,
                  color: AppColors.backPrimary,
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.shopping_cart),
                      onPressed: () {},
                      tooltip: "Carrinho",
                    )
                  ],
                  title: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Bem - Vindo",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Text("Minha loja"),
                    ],
                  ),
                ),
      body: _list_page[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.backPrimary,
        currentIndex: _index,
        onTap: onTapTapped,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white60,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white60,
              ),
              title: Text(
                "Favorito",
                style: TextStyle(color: Colors.white),
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white60,
              ),
              title: Text(
                "Busca",
                style: TextStyle(color: Colors.white),
              ),
              activeIcon: Icon(
                Icons.search,
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white60,
              ),
              backgroundColor: Colors.blue,
              title: Text(
                "Pedido",
                style: TextStyle(color: Colors.white),
              ),
              activeIcon: Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.white60,
              ),
              backgroundColor: Colors.blue,
              title: Text(
                "Perfil",
                style: TextStyle(color: Colors.white),
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.blue,
              )),
        ],
      ),
    );
  }

  AppBar buildAppBarHome(
      {required double barHeight,
      required Color color,
      required List<Widget> actions,
      required Widget title}) {
    return AppBar(
        toolbarHeight: barHeight,
        backgroundColor: color,
        title: title,
        centerTitle: true,
        actions: actions);
  }
}
