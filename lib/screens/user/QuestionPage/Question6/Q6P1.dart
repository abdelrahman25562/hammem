import 'package:flutter/material.dart';
import 'package:hammem/screens/user/QuestionPage/FinalPage.dart';

class Q6P1 extends StatefulWidget {
  static String id = 'Question6-Part1';
  @override
  _Q6P1State createState() => _Q6P1State();
}

class _Q6P1State extends State<Q6P1> {
  Color _buttonColor1 = Colors.orangeAccent;
  Color _buttonColor2 = Colors.white;
  Color _buttonColor3 = Colors.white;
  Color _buttonColor4 = Colors.white;
  Color _buttonColor5 = Colors.white;
  Color _buttonColor6 = Colors.white;

  Color _buttonColor7 = Colors.white;
  Color _buttonColor8 = Colors.white;
  Color _buttonColor9 = Colors.white;
  Color _buttonColor10 = Colors.white;

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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 20,
            height: MediaQuery.of(context).size.height / 15,
            child: OutlineButton(
              borderSide: BorderSide(color: Colors.black),
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: RaisedButton(
                  color: _buttonColor1,
                  onPressed: () {
                    setState(() {
                      _buttonColor1 = Colors.green;
                    });
                  },
                  child: Text(
                    'الاستثارة بالتقييد',
                    style: TextStyle(fontSize: 15.0),
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 15,
              child: OutlineButton(
                color: Colors.white24,
                borderSide: BorderSide(color: Colors.black),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  child: RaisedButton(
                    color: _buttonColor2,
                    onPressed: () {
                      setState(() {
                        _buttonColor2 = Colors.green;
                      });
                    },
                    child: Text(
                      'الاستثارة بالأقدام',
                      style: TextStyle(fontSize: 15.0),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ))
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 15,
              child: OutlineButton(
                color: Colors.white24,
                borderSide: BorderSide(color: Colors.black),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  child: RaisedButton(
                    color: _buttonColor3,
                    onPressed: () {
                      setState(() {
                        _buttonColor3 = Colors.green;
                      });
                    },
                    child: Text(
                      'لعب الأدوار',
                      style: TextStyle(fontSize: 15.0),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ))
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 15,
              child: OutlineButton(
                color: Colors.white24,
                borderSide: BorderSide(color: Colors.black),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  child: RaisedButton(
                    color: _buttonColor4,
                    onPressed: () {
                      setState(() {
                        _buttonColor4 = Colors.green;
                      });
                    },
                    child: Text(
                      'الاستثارة باللاتيكس والجلود',
                      style: TextStyle(fontSize: 15.0),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ))
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 15,
              child: OutlineButton(
                color: Colors.white24,
                borderSide: BorderSide(color: Colors.black),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  child: RaisedButton(
                    color: _buttonColor5,
                    onPressed: () {
                      setState(() {
                        _buttonColor5 = Colors.green;
                      });
                    },
                    child: Text(
                      'التدليل كالاطفال',
                      style: TextStyle(fontSize: 15.0),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ))
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 15,
              child: OutlineButton(
                color: Colors.white24,
                borderSide: BorderSide(color: Colors.black),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  child: RaisedButton(
                    color: _buttonColor6,
                    onPressed: () {
                      setState(() {
                        _buttonColor6 = Colors.green;
                      });
                    },
                    child: Text(
                      'لعبة التابع والسيد',
                      style: TextStyle(fontSize: 15.0),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ))
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 15,
              child: OutlineButton(
                color: Colors.white24,
                borderSide: BorderSide(color: Colors.black),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  child: RaisedButton(
                    color: _buttonColor7,
                    onPressed: () {
                      setState(() {
                        _buttonColor7 = Colors.green;
                      });
                    },
                    child: Text(
                      'الأزياء المتعاكسة',
                      style: TextStyle(fontSize: 15.0),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              )),
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 15,
              child: OutlineButton(
                color: Colors.white24,
                borderSide: BorderSide(color: Colors.black),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  child: RaisedButton(
                    color: _buttonColor9,
                    onPressed: () {
                      setState(() {
                        _buttonColor9 = Colors.green;
                      });
                    },
                    child: Text(
                      'الكلام البذئ',
                      style: TextStyle(fontSize: 15.0),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              )),
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 15,
              child: OutlineButton(
                color: Colors.white24,
                borderSide: BorderSide(color: Colors.black),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  child: RaisedButton(
                    color: _buttonColor9,
                    onPressed: () {
                      setState(() {
                        _buttonColor9 = Colors.green;
                      });
                    },
                    child: Text(
                      'الأدوات الجنسية',
                      style: TextStyle(fontSize: 15.0),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              )),
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 15,
              child: OutlineButton(
                color: Colors.white24,
                borderSide: BorderSide(color: Colors.black),
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                child: Container(
                  child: RaisedButton(
                    color: _buttonColor10,
                    onPressed: () {
                      setState(() {
                        _buttonColor10 = Colors.green;
                      });
                    },
                    child: Text(
                      'الأزياء',
                      style: TextStyle(fontSize: 15.0),
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              )),
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
                Navigator.pushNamed(context, Final.id);
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
