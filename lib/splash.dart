import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hammem/screens/login.dart';
import 'package:hammem/screens/user/HomePage.dart';
import 'package:hammem/services/auth.dart';

//==============================splash-screen======================//
class Splash extends StatefulWidget {
  static String id = 'Splashscreen';
  final _auth = Auth();
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }
  Future<void> _handleStartScreen() async {
    Auth _auth = Auth();
    if (await _auth.isLoggedIn()) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    //=====================Nav-Loginscreen===========================//
    Timer(
        Duration(seconds: 3),
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
