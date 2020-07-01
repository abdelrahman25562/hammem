import 'package:flutter/material.dart';
import 'package:hammem/screens/user/QuestionPage/Question5/Q5Part2.dart';
import 'package:hammem/widgets/Rating.dart';
import 'package:hammem/widgets/StarRating.dart';

class Q5P1 extends StatefulWidget {
  static String id = 'Question5-Part1';
  @override
  _Q5P1State createState() => _Q5P1State();
}

class _Q5P1State extends State<Q5P1> {
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
            'شعر الجسد',
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
          Txt('كيف تفضل أن يكون شريكك')
        ],
      ),
      Row(
        children: <Widget>[
          BrightnessSliderContainer(),
          SizedBox(
            width: 25,
          ),
          Txt('شعر اليد')
        ],
      ),
      Row(
        children: <Widget>[
          BrightnessSliderContainer(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 5.1,
          ),
          Txt('شعر الساق')
        ],
      ),
      Row(
        children: <Widget>[
          BrightnessSliderContainer(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 7.5,
          ),
          Txt('شعر الابط')
        ],
      ),
      Row(
        children: <Widget>[
          BrightnessSliderContainer(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 10.125,
          ),
          Txt('لمس العانة')
        ],
      ),
      Row(
        children: <Widget>[
          BrightnessSliderContainer(),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'شعر الشنب',
            style: TextStyle(fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          BrightnessSliderContainer(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 8.4,
          ),
          Txt('شعر اللحية')
        ],
      ),
      Row(
        children: <Widget>[
          BrightnessSliderContainer(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 25.41,
          ),
          Txt('شعر الصدر(للرجال)')
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
                Navigator.pushNamed(context, Q5P2.id);
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
