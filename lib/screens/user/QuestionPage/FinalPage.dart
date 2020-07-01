import 'package:flutter/material.dart';
import 'package:hammem/screens/user/HomePage.dart';
import 'package:hammem/screens/user/QuestionPage/questionPage.dart';
import 'package:hammem/screens/user/ShowResult.dart';

class Final extends StatefulWidget {
  static String id = 'Result1';
  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Center(child: Image.asset('assets/images/finish.png')),
      SizedBox(height: 20.0),
      Center(
          child: Text(
        'تم الانتهاء من الاستبيان',
        style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
      )),
      Center(
          child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Result.id);
        },
        child: Text(
          'استعراض التقرير',
          style: TextStyle(
              fontSize: 20.0, fontFamily: 'Cairo', color: Color(0xffFC009E)),
        ),
      )),
      Center(
          child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Question.id);
        },
        child: Text(
          'اعادة استبيان جديد',
          style: TextStyle(
              fontSize: 20.0, fontFamily: 'Cairo', color: Color(0xffFC009E)),
        ),
      )),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, HomePage.id);
            },
            child: Text(
              'الصفحة الرئيسية',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Cairo',
                  color: Color(0xffFC009E)),
            ),
          )),
          Center(
            child: Text(
              'االعودة الى ',
              style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
            ),
          ),
        ],
      )
    ]));
  }
}
