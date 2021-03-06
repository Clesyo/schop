import 'package:CShop/core/core.dart';
import 'package:CShop/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage())));
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
        decoration: BoxDecoration(gradient: AppGradients.linear),
      ),
    );
  }
}
