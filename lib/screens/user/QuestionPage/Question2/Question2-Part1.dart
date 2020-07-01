import 'package:flutter/material.dart';
import 'package:hammem/screens/user/QuestionPage/Question3/Question3-Part1.dart';
import 'package:hammem/widgets/Text-Box.dart';

class Q2Part1 extends StatefulWidget {
  static String id = 'Question2-part1';
  @override
  _Q2Part1State createState() => _Q2Part1State();
}

class _Q2Part1State extends State<Q2Part1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
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
            width: 15.0,
          ),
          Text(
            'قم باختيار الوضعيات الأفضل والأسوأ من',
            style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: 28.0,
          ),
          Text(
            'الوضعيات التالية حسب كل رقم وضعية',
            style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Image.asset(
        'assets/images/one.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/two.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/three.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
        fit: BoxFit.fill,
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.11,
          ),
          Text(
            'أفضل الوضعيات بالنسبة لي هي',
            style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Text(
            'أكتب أرقام الوضعيات المفضلة مرتبه بحسب الأفضليه',
            style: TextStyle(fontSize: 15.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الأول'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الثانى'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الثالث'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الرابع'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الخامس'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال السادس'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال السابع'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الثامن'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال التاسع'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال العاشر'),
      SizedBox(
        height: 2.0,
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.11,
          ),
          Text(
            'أسؤا الوضعيات بالنسبة لي هي',
            style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.075,
          ),
          Text(
            'أكتب أرقام الوضعيات المفضلة مرتبه بحسب الكراهية',
            style: TextStyle(fontSize: 15.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الأول'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الثانى'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الثالث'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الرابع'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الخامس'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال السادس'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال السابع'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال الثامن'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال التاسع'),
      SizedBox(
        height: 2.0,
      ),
      CustomTxtField(color: Colors.black, hint: 'السؤال العاشر'),
      SizedBox(
        height: 15.0,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Builder(
            builder: (context) => FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.pushNamed(context, Q3Part1.id);
              },
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.blueAccent, Colors.pinkAccent]),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  alignment: Alignment.center,
                  child: Text(
                    'Question3',
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
        height: 55.0,
      )
    ]));
  }
}
