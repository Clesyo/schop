import 'package:CShop/home/home_page.dart';
import 'package:CShop/login/login_page.dart';
import 'package:CShop/register/register_page.dart';
import 'package:CShop/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CShop",
      home: HomePage(),
    );
  }
}
