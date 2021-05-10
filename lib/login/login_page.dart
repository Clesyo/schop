import 'package:CShop/core/app_colors.dart';
import 'package:CShop/core/app_gradients.dart';
import 'package:CShop/login/widget/field_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.backPrimary,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Acesse com email e senha",
                    style: TextStyle(
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: size.width,
                      height: 330,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3))
                          ],
                          color: AppColors.blackSecondary,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: <Widget>[
                            FieldWidget(
                              label: "Email",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FieldWidget(
                              label: "Senha",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF2596be),
                                    Color(0xFF1e81b0)
                                  ])),
                              width: size.width * 0.8,
                              child: ClipRRect(
                                child: FlatButton(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 40),
                                  onPressed: () {},
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Esceque sua senha?",
                              style: TextStyle(color: AppColors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
