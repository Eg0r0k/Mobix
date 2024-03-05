import 'package:flutter/material.dart';
import 'package:mobix/app/app_theme.dart';
import '../shared/field/field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: <Widget>[
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Text(
                  "Back",
                  style: TextStyles.headlineSmall
                      .copyWith(color: AppTheme.mainColor),
                ),
              ),
              Spacer(),
              Text(
                "Log In",
                style: TextStyles.displayLarge,
              ),
              Spacer(),
              InkWell(
                child: Text(
                  "Test",
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
            child: const Column(
              children: [
                CustomField(textHold: "Email"),
                CustomField(
                  textHold: "Password",
                  obscureText: true,
                )
              ],
            )));
  }
}
