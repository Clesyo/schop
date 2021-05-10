import 'package:CShop/core/app_colors.dart';
import 'package:CShop/login/widget/field_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backPrimary,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Registro",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Informe seus dados par criar seu cadastro.",
                      style: TextStyle(color: Colors.white54)),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
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
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      FieldWidget(label: "Nome"),
                      SizedBox(
                        height: 10,
                      ),
                      FieldWidget(label: "Email"),
                      SizedBox(
                        height: 10,
                      ),
                      FieldWidget(label: "Nome de usuário"),
                      SizedBox(
                        height: 10,
                      ),
                      FieldWidget(label: "Senha"),
                      SizedBox(
                        height: 10,
                      ),
                      FieldWidget(label: "Cofirmar senha"),
                      SizedBox(
                        height: 25,
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
                              "Regsitrar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Já tem uma conta?",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xFF1e81b0),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
