import 'package:flutter/material.dart';
import 'package:hammem/screens/user/QuestionPage/Question3/Question3-Part2.dart';

class Q3Part1 extends StatefulWidget {
  static String id = 'Question3';

  @override
  _Q3Part1State createState() => _Q3Part1State();
}

class _Q3Part1State extends State<Q3Part1> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onPressed: () {
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
                  '3',
                  style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
                )
              ],
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'المقبول و المرفوض',
                    style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
                  )
                ]),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 28.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'قم بكتابة الأشياء المفضلة والمرفوضة التي تفعلها عند الممارسة الحميمية',
                    style: TextStyle(fontSize: 20.0, fontFamily: 'Cairo'),
                  ),
                ),
              ),
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
                    Navigator.pushNamed(context, Q3Part2.id);
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
                          'بدء',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
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
