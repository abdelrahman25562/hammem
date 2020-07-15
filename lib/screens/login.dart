import 'package:flutter/cupertino.dart';
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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
                  hint: 'الايميل',
                  color: Colors.black
                ),
                SizedBox(
                  height: height * .03,
                ),
                CustomTextField(
                  onClick: (value) {
                    password = value;
                  },
                  color: Colors.black,
                  hint: 'كلمة السر',
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
                              'دخول',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: height * .06,
                    ),
                    Text(
                      'ليس لدي حساب',
                      style: TextStyle(
                          color: Colors.black, fontSize: 13, fontFamily: 'Cairo'),
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
                              Navigator.pushReplacementNamed(context, SignUp.id);
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
                                  'انشاء حساب',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
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
