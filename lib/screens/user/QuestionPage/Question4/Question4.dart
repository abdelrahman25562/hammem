import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hammem/screens/user/QuestionPage/Question4/Q4Part1.dart';

class Question4 extends StatefulWidget {
  static String id = 'Question4';

  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: <Widget>[
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
                    '4',
                    style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
                  )
                ],
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'خارطة المتعة',
                      style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
                    )
                  ]),
              SizedBox(
                height: 15.0,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'ضع علامه',
                        style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
                      ),
                      Icon(
                        Icons.done,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  Text(
                    'علي مناطق المداعبه المفضله لديك',
                    style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'وعلامه',
                        style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
                      ),
                      Text(
                        'X',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Cairo',
                            color: Colors.red),
                      ),
                    ],
                  ),
                  Text(
                    'علي المناطق التي لا تفضل ',
                    style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
                  ),
                  Text(
                    'المداعبه لك ولشريكك ',
                    style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Builder(
                  builder: (context) => FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.pushNamed(context, Q4Part1.id);
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
              SizedBox(
                height: 70.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
