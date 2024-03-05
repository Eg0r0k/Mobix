import 'package:flutter/material.dart';
import 'package:mobix/app/app_theme.dart';
import '../pages/login.dart';
import '../shared/field/field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: <Widget>[
              InkWell(
                child: Text(
                  "Test",
                  style: TextStyles.headlineSmall
                      .copyWith(color: AppTheme.mainColor),
                ),
              ),
              Spacer(),
              Text(
                "Sing Up",
                style: TextStyles.displayLarge,
              ),
              Spacer(),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    )),
                child: Text(
                  "Login",
                  style: TextStyles.headlineSmall
                      .copyWith(color: AppTheme.mainColor),
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Container(
            color: AppTheme.backgroundColor,
            padding: AppTheme.containerPadding,
            child: Column(
              children: [
                CustomField(textHold: "Name"),
                CustomField(textHold: "Email"),
                CustomField(
                  textHold: "Password",
                  obscureText: true,
                ),
              ],
            )));
  }
}
