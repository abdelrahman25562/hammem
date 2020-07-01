import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hammem/screens/login.dart';

//==============================splash-screen======================//
class Splash extends StatefulWidget {
  static String id = 'Splashscreen';
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //=====================Nav-Loginscreen===========================//
    Timer(
        Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/logo.webp',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
