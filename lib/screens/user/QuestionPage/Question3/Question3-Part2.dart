import 'package:flutter/material.dart';
import 'package:hammem/screens/user/QuestionPage/Question4/Question4.dart';
import 'package:hammem/widgets/CDT.dart';

class Q3Part2 extends StatefulWidget {
  static String id = 'Question3-Part2';
  @override
  _Q3Part2State createState() => _Q3Part2State();
}

class _Q3Part2State extends State<Q3Part2> {
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
        hint: 'قم بكتابة الأشياء المفضلة',
        color: Colors.grey,
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
        hint: 'قم بكتابة الأشياء المرفوضه',
        color: Colors.grey,
      ),
      SizedBox(
        height: 30.0,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Builder(
            builder: (context) => FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.pushNamed(context, Question4.id);
              },
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: <Color>[Color(0xE263878C), Color(0x2FBCEF82)]),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      'بدء',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontFamily: 'Cairo'),
                    ),
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
