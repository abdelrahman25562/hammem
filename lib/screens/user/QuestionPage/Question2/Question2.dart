import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammem/screens/user/QuestionPage/Question2/Question2-Part1.dart';

class Question2 extends StatefulWidget {
  static String id = 'Question2';

  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.black,), onPressed: (){
            Navigator.pop(context);
          }),
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'الاستبيان',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '2',
                  style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
                )
              ],
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'أوضاع الجماع',
                    style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
                  )
                ]),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Builder(
                builder: (context) => FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.pushNamed(context, Q2Part1.id);
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
                              fontSize: 18.0,
                              fontFamily: 'Cairo'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
