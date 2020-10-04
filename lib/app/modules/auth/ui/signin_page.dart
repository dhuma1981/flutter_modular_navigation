import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_navigation/app/utils/routes.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "SignIn Page",
              style: TextStyle(fontSize: 40),
            ),
            RaisedButton(
                child: Text("HOME"),
                onPressed: () {
                  Modular.to.pushNamedAndRemoveUntil(Routes.home, (_) => false);
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_box),
        onPressed: () {
          Modular.link.pushNamed(Routes.signUp);
        },
      ),
    );
  }
}
