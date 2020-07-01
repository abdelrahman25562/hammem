import 'package:flutter/material.dart';
import 'package:hammem/screens/user/QuestionPage/Question6/Question6.dart';
import 'package:hammem/widgets/StarRating.dart';

class Q5P2 extends StatefulWidget {
  static String id = 'Question5-Part2';
  @override
  _Q5P2State createState() => _Q5P2State();
}

class _Q5P2State extends State<Q5P2> {
  List<bool> _list = [true, false, true, false];

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
            width: 10.0,
          ),
          Text(
            'روائح الجسد',
            style: TextStyle(
                fontSize: 20.0, color: Color(0xffFC009E), fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.09,
          ),
          Txt('كيف تقيم رائحة الشريك بالعادة')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.1,
          ),
          Txt('رائحة الجسد بشكل عام')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.1,
          ),
          Txt('رائحة الابط')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
          ),
          Txt('رائحة منطقة العانة')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.125,
          ),
          Txt('رائحة الفم')
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Text(
            'رائحة اللحية',
            style: TextStyle(fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.4,
          ),
          Txt('رائحة القدم')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.41,
          ),
          Txt('رائحة الشعر')
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Builder(
            builder: (context) => FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.pushNamed(context, Q6.id);
              },
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.blueAccent, Colors.pinkAccent]),
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  alignment: Alignment.center,
                  child: Text(
                    'Part2',
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
