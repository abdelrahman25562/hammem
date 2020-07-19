import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/screens/user/QuestionPage/Question4/Question4.dart';
import 'package:hammem/widgets/CDT.dart';
import 'package:provider/provider.dart';

class Q3Part2 extends StatefulWidget {
  static String id = 'Question3-Part2';

  @override
  _Q3Part2State createState() => _Q3Part2State();
}

class _Q3Part2State extends State<Q3Part2> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading:  IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'الاستبيان',
                      style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
                    )
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'قم بكتابة الأشياء المفضلة',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                    ),
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    SizedBox(
                      width: 23.0,
                    ),
                    Text(
                      'فى هذه الخانة',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                    ),
                  ],
                ),
                CDT(
                  hint: 'قم بكتابة الأشياء المفضلة التي تحبها عند الممارسة الحميمية',
                  color: Colors.grey,
                  question: ' الأشياء المفضلة ',
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'قم بكتابة الأشياء المرفوضه',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                    ),
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    SizedBox(
                      width: 23.0,
                    ),
                    Text(
                      'فى هذه الخانة',
                      style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                    ),
                  ],
                ),
                CDT(
                  hint: 'قم بكتابة الأشياء المرفوضة التي لا تحبها عند الممارسة الحميمية',
                  color: Colors.grey,
                  question: ' الأشياء المرفوضه ',
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Builder(
                    builder: (context) => Consumer<QuestionProvider>(
                      builder: (context, provider, _) => FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          _formkey.currentState.save();
                          provider.generatePdfAndView(
                            type: QuestionType.Text,
                            questionNum: 2,
                            context: context,
                          );
                          Navigator.pushNamed(context, Question4.id);
                        },
                        child: Ink(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [
                                  0.3,
                                  1
                                ],
                                colors: <Color>[
                                  Color(0xE263878C),
                                  Color(0x2FBCEF82)
                                ]),
                            borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            alignment: Alignment.center,
                            child: Center(
                              child: Text(
                                'متابعه',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
