import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hammem/provider/modelhub.dart';
import 'package:hammem/services/auth.dart';
import 'package:hammem/widgets/Custom_detector.dart';
import 'package:hammem/widgets/cutsom_logo.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

import '../content.dart';
import 'login.dart';
import 'user/HomePage.dart';

class SignUp extends StatefulWidget {
  static const id = 'SignUp';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _email, _password, _name, _country;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final _auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: kMainColor,
            body: ModalProgressHUD(
                inAsyncCall:
                Provider.of<Mpdalhub>(context, listen: false).isloading,
                child: Form(
                  key: _globalKey,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 1.0),
                        child: Container(
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              CustomLogo(),
                            ],
                          ),
                        ),
                      ),
                      CustomTextField(
                        onClick: (value) {
                          _name = value;
                        },
                        hint: 'الاسم المستعار',
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      CustomTextField(
                        onClick: (value) {
                          _country = value;
                        },
                        hint: 'البلد',
                        color:Colors.black,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      CustomTextField(
                        onClick: (value) {
                          _email = value;
                        },
                        hint: 'الايميل',
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .01,
                      ),
                      CustomTextField(
                        onClick: (value) {
                          _password = value;
                        },
                        hint: 'كلمة السر',
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Builder(
                          builder: (context) => FlatButton(
                            onPressed: () async {
                              final modehub =
                              Provider.of<Mpdalhub>(context, listen: false);
                              modehub.chageisloading(true);
                              if (_globalKey.currentState.validate()) {
                                _globalKey.currentState.save();
                                try {
                                  final authresult = await _auth.signUp(
                                      _email, _password, _name, _country);
                                  modehub.chageisloading(false);
                                  Navigator.pushNamed(context, HomePage.id);
                                } on PlatformException catch (e) {
                                  modehub.chageisloading(false);
                                  Scaffold.of(context).showSnackBar(
                                      SnackBar(content: Text(e.message)));
                                }
                              }
                              modehub.chageisloading(false);
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
                                width: MediaQuery.of(context).size.width * 0.4,
                                alignment: Alignment.center,
                                child: Text(
                                  'انشاء حساب',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0),
                                ),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .001,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "لدي حساب بالفعل",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Cairo'),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              ' تسجيل دخول',
                              style: TextStyle(
                                  color: Color(0xFFE26387),
                                  fontSize: 16,
                                  fontFamily: 'Cairo'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )))
    );
  }
}
