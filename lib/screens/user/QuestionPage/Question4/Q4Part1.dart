import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hammem/screens/user/QuestionPage/Question5/Question5.dart';

class Q4Part1 extends StatefulWidget {
  static String id = 'Question4-Part1';

  @override
  _Q4Part1State createState() => _Q4Part1State();
}

class _Q4Part1State extends State<Q4Part1> {
  double width = 55.0, height = 30.0;
  Offset position;
  Offset position2;
  Offset position3;
  Offset position4;
  Offset position7;
  Offset position8;
  Offset position9;
  Offset position10;
  Offset position11;
  Offset position12;

  @override
  void initState() {
    super.initState();
    position = Offset(0.0, 1);
    position2 = Offset(0.0, 1);
    position3 = Offset(0.0, 1);
    position4 = Offset(0.0, 1);
    position7 = Offset(0.0, height - 5);
    position8 = Offset(0.0, height - 5);
    position9 = Offset(0.0, height - 5);
    position10 = Offset(0.0, height - 5);
    position11 = Offset(0.0, height - 8);
    position12 = Offset(0.0, height - 6);
  }

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
            width: MediaQuery.of(context).size.width / 120,
          ),
          Text(
            'قم باختيار العلامة التى تريد استخدامها للتعليم',
            style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.093,
          ),
          Text(
            'على مناطق المداعبة التى تفضلهاوالمناطق',
            style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.051,
          ),
          Text(
            'التى لا تفضلها علي حسب اختيارك للعلامة',
            style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      SizedBox(
        height: 20.0,
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.048,
          ),
          Text(
            'المناطق التى يحبها الرجال عند النساء',
            style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Text(
            'قم باختيار علامتك سواء كانت(المفضلة/الغير مفضلة)',
            style: TextStyle(fontSize: 15.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.048,
          ),
          Text(
            'من خلال سحب علامات الصح والخطأ الموجوده بالصوره',
            style: TextStyle(fontSize: 15.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 2,
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/112.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
              ),
              Positioned(
                left: position.dx + 5,
                top: position.dy - height + 25.0,
                child: Draggable(
                  child: Container(
                    width: 15,
                    height: 15,
                    child: Center(
                      child:
                          Center(child: Image.asset('assets/images/wrong.png')),
                    ),
                    color: Colors.white,
                  ),
                  feedback: Container(
                    width: 15,
                    height: 15,
                    child: Center(
                      child:
                          Center(child: Image.asset('assets/images/wrong.png')),
                    ),
                    color: Colors.white,
                  ),
                  onDraggableCanceled: (Velocity velocity, Offset offset) {
                    setState(() => position = offset);
                  },
                ),
              ),
              Positioned(
                left: position2.dx + 5.0,
                top: position2.dy - height + 25.0,
                child: Draggable(
                  child: Container(
                    width: 15,
                    height: 15,
                    color: Colors.white,
                    child:
                        Center(child: Image.asset('assets/images/wrong.png')),
                  ),
                  feedback: Container(
                    width: 15,
                    height: 15,
                    color: Colors.white,
                    child:
                        Center(child: Image.asset('assets/images/wrong.png')),
                  ),
                  onDraggableCanceled: (Velocity velocity, Offset offset) {
                    setState(() => position2 = offset);
                  },
                ),
              ),
              Positioned(
                left: position3.dx + 5.0,
                top: position3.dy - height + 25.0,
                child: Draggable(
                  child: Container(
                    width: 15,
                    height: 15,
                    color: Colors.white,
                    child:
                        Center(child: Image.asset('assets/images/wrong.png')),
                  ),
                  feedback: Container(
                    width: 15,
                    height: 15,
                    color: Colors.white,
                    child:
                        Center(child: Image.asset('assets/images/wrong.png')),
                  ),
                  onDraggableCanceled: (Velocity velocity, Offset offset) {
                    setState(() => position3 = offset);
                  },
                ),
              ),
              Positioned(
                left: position4.dx + 5.0,
                top: position4.dy - height + 25.0,
                child: Draggable(
                  child: Container(
                    width: 15,
                    height: 15,
                    color: Colors.white,
                    child:
                        Center(child: Image.asset('assets/images/wrong.png')),
                  ),
                  feedback: Container(
                    width: 15,
                    height: 15,
                    color: Colors.white,
                    child:
                        Center(child: Image.asset('assets/images/wrong.png')),
                  ),
                  onDraggableCanceled: (Velocity velocity, Offset offset) {
                    setState(() => position4 = offset);
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
      SizedBox(
        height: 20.0,
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.048,
          ),
          Text(
            'المناطق التى تحبها النساء عند الرجال',
            style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Text(
            'قم باختيار علامتك سواء كانت(المفضلة/الغير مفضلة)',
            style: TextStyle(fontSize: 15.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.048,
          ),
          Text(
            'من خلال سحب علامات الصح والخطأ الموجوده بالصوره',
            style: TextStyle(fontSize: 15.0, fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/man.png',
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              left: position7.dx + 5,
              top: position7.dy - height + 55,
              child: Draggable(
                child: Container(
                  width: 15,
                  height: 15,
                  child: Center(
                    child:
                        Center(child: Image.asset('assets/images/wrong.png')),
                  ),
                  color: Colors.white,
                ),
                feedback: Container(
                  width: 15,
                  height: 15,
                  child: Center(
                    child:
                        Center(child: Image.asset('assets/images/wrong.png')),
                  ),
                  color: Colors.white,
                ),
                onDraggableCanceled: (Velocity velocity, Offset offset) {
                  setState(() => position7 = offset);
                },
              ),
            ),
            Positioned(
              left: position8.dx + 5.0,
              top: position8.dy - height + 55.0,
              child: Draggable(
                child: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                feedback: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                onDraggableCanceled: (Velocity velocity, Offset offset) {
                  setState(() => position8 = offset);
                },
              ),
            ),
            Positioned(
              left: position9.dx + 5.0,
              top: position9.dy - height + 55.0,
              child: Draggable(
                child: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                feedback: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                onDraggableCanceled: (Velocity velocity, Offset offset) {
                  setState(() => position9 = offset);
                },
              ),
            ),
            Positioned(
              left: position10.dx + 5.0,
              top: position10.dy - height + 55.0,
              child: Draggable(
                child: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                feedback: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                onDraggableCanceled: (Velocity velocity, Offset offset) {
                  setState(() => position10 = offset);
                },
              ),
            ),
            Positioned(
              left: position11.dx + 5.0,
              top: position11.dy - height + 55.0,
              child: Draggable(
                child: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                feedback: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                onDraggableCanceled: (Velocity velocity, Offset offset) {
                  setState(() => position11 = offset);
                },
              ),
            ),
            Positioned(
              left: position12.dx + 5.0,
              top: position12.dy - height + 55.0,
              child: Draggable(
                child: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                feedback: Container(
                  width: 15,
                  height: 15,
                  color: Colors.white,
                  child: Center(child: Image.asset('assets/images/wrong.png')),
                ),
                onDraggableCanceled: (Velocity velocity, Offset offset) {
                  setState(() => position12 = offset);
                },
              ),
            ),
          ],
        ),
      ]),
      SizedBox(
        height: MediaQuery.of(context).size.height / 4,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Builder(
            builder: (context) => FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Navigator.pushNamed(context, Q5.id);
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
