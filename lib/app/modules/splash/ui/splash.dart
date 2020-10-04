import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_navigation/app/utils/routes.dart';

class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "SPLASH",
              style: TextStyle(fontSize: 40),
            ),
          ),
          RaisedButton(
              child: Text("Go to Intro"),
              onPressed: () {
                Modular.to.pushReplacementNamed(Routes.intro);
              }),
          RaisedButton(
              child: Text("Go to Home"),
              onPressed: () {
                Modular.to.pushReplacementNamed(Routes.home);
              })
        ],
      ),
    );
  }
}
