import 'package:flutter/material.dart';
import 'package:hammem/provider/Admin.dart';
import 'package:hammem/provider/modelhub.dart';
import 'package:hammem/screens/user/HomePage.dart';
import 'package:hammem/services/auth.dart';
import 'package:hammem/widgets/Custom_detector.dart';
import 'package:hammem/widgets/cutsom_logo.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

import '../content.dart';
import 'Admins/Admins.dart';
import 'SignUp.dart';

const String testdevice = '';

class LoginScreen extends StatelessWidget {
  final adminPassword = '2556250';
  static String id = 'LoginScreen';
  String _email, password;
  final _auth = Auth();
  static final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kMainColor,
      body: ModalProgressHUD(
        inAsyncCall: Provider.of<Mpdalhub>(context).isloading,
        child: Form(
          key: globalKey,
          child: ListView(
            children: <Widget>[
              CustomLogo(),
              SizedBox(
                height: height * .01,
              ),
              CustomTextField(
                onClick: (value) {
                  _email = value;
                },
                hint: 'Enter your email',
                color: kMainColor,
              ),
              SizedBox(
                height: height * .02,
              ),
              CustomTextField(
                onClick: (value) {
                  password = value;
                },
                color: kMainColor,
                hint: 'Enter your password',
              ),
              SizedBox(
                height: height * .03,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: Builder(
                    builder: (context) => FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        _validate(context);
                      },
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Colors.blueAccent,
                            Colors.pinkAccent
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: 'Cairo'),
                          ),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: height * .002,
                width: MediaQuery.of(context).size.width * .02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Provider.of<AdminMode>(context, listen: false)
                              .changeisadmin(true);
                        },
                        child: Text(
                          'i\'m an admin',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Provider.of<AdminMode>(context).inadmin
                                  ? Colors.pinkAccent
                                  : Colors.blueAccent,
                              fontFamily: 'Cairo'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Provider.of<AdminMode>(context, listen: false)
                              .changeisadmin(false);
                        },
                        child: Text(
                          'i\'m a user',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              color:
                                  Provider.of<AdminMode>(context, listen: true)
                                          .inadmin
                                      ? Colors.blueAccent
                                      : Colors.pinkAccent),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Don\'t have an account ?',
                    style: TextStyle(
                        color: Colors.black, fontSize: 15, fontFamily: 'Cairo'),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Builder(
                        builder: (context) => FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {
                            Navigator.pushNamed(context, SignUp.id);
                          },
                          child: Ink(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: <Color>[
                                Colors.blueAccent,
                                Colors.pinkAccent
                              ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0)),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              alignment: Alignment.center,
                              child: Text(
                                'Signup',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _validate(BuildContext context) async {
    final modelhud = Provider.of<Mpdalhub>(context, listen: false);
    modelhud.chageisloading(true);
    if (globalKey.currentState.validate()) {
      globalKey.currentState.save();
      if (Provider.of<AdminMode>(context, listen: false).inadmin) {
        if (password == adminPassword) {
          try {
            await _auth.signIn(_email.trim(), password.trim());
            Navigator.pushNamed(context, Admins.id);
          } catch (e) {
            modelhud.chageisloading(false);
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(e.message, style: TextStyle(fontFamily: 'Cairo')),
            ));
          }
        } else {
          modelhud.chageisloading(false);
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(
              'Something went wrong !',
              style: TextStyle(fontFamily: 'Cairo'),
            ),
          ));
        }
      } else {
        try {
          await _auth.signIn(_email.trim(), password.trim());
          Navigator.pushNamed(context, HomePage.id);
        } catch (e) {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(e.message),
          ));
        }
      }
    }
    modelhud.chageisloading(false);
  }
}
