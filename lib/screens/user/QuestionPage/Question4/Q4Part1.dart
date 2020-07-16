import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/provider/questionProvider.dart';
import 'package:hammem/screens/user/QuestionPage/Question4/photoEditing.dart';
import 'package:hammem/screens/user/QuestionPage/Question5/Question5.dart';
import 'package:provider/provider.dart';

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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading:   IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
              onPressed: () {
                Navigator.pop(context);
              }),
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
            Padding(
              padding: const EdgeInsets.only(right:8.0,left: 8.0),
              child: Container(
                child: Text(
                  ' قم باختيار العلامة التى تريد استخدامها للتعلي قم باختيار العلامة التى تريد استخدامها للتعلي قم باختيار العلامة التى تريد استخدامها للتعليم',
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
                ),
              ),
            ),


SizedBox(height: 40.0,),



//          Row(children: <Widget>[
//            Container(
//              height: MediaQuery.of(context).size.height / 2,
//              child: Stack(
//                children: <Widget>[
//                  Image.asset(
//                    'assets/images/112.png',
//                    width: MediaQuery.of(context).size.width,
//                    height: MediaQuery.of(context).size.height / 2,
//                  ),
//                  Positioned(
//                    left: position.dx + 5,
//                    top: position.dy - height + 25.0,
//                    child: Draggable(
//                      child: Container(
//                        width: 15,
//                        height: 15,
//                        child: Center(
//                          child: Center(
//                              child: Image.asset('assets/images/wrong.png')),
//                        ),
//                        color: Colors.white,
//                      ),
//                      feedback: Container(
//                        width: 15,
//                        height: 15,
//                        child: Center(
//                          child: Center(
//                              child: Image.asset('assets/images/wrong.png')),
//                        ),
//                        color: Colors.white,
//                      ),
//                      onDraggableCanceled: (Velocity velocity, Offset offset) {
//                        setState(() {
//                          position = offset;
//                          print(position);
//                        });
//                      },
//                    ),
//                  ),
//                  Positioned(
//                    left: position2.dx + 5.0,
//                    top: position2.dy - height + 25.0,
//                    child: Draggable(
//                      child: Container(
//                        width: 15,
//                        height: 15,
//                        color: Colors.white,
//                        child: Center(
//                            child: Image.asset('assets/images/wrong.png')),
//                      ),
//                      feedback: Container(
//                        width: 15,
//                        height: 15,
//                        color: Colors.white,
//                        child: Center(
//                            child: Image.asset('assets/images/wrong.png')),
//                      ),
//                      onDraggableCanceled: (Velocity velocity, Offset offset) {
//                        setState(() {
//                          position2 = offset;
//                          print(position2);
//                        });
//                      },
//                    ),
//                  ),
//                  Positioned(
//                    left: position3.dx + 5.0,
//                    top: position3.dy - height + 25.0,
//                    child: Draggable(
//                      child: Container(
//                        width: 15,
//                        height: 15,
//                        color: Colors.white,
//                        child: Center(
//                            child: Image.asset('assets/images/wrong.png')),
//                      ),
//                      feedback: Container(
//                        width: 15,
//                        height: 15,
//                        color: Colors.white,
//                        child: Center(
//                            child: Image.asset('assets/images/wrong.png')),
//                      ),
//                      onDraggableCanceled: (Velocity velocity, Offset offset) {
//                        setState(() => position3 = offset);
//                      },
//                    ),
//                  ),
//                  Positioned(
//                    left: position4.dx + 5.0,
//                    top: position4.dy - height + 25.0,
//                    child: Draggable(
//                      child: Container(
//                        width: 15,
//                        height: 15,
//                        color: Colors.white,
//                        child: Center(
//                            child: Image.asset('assets/images/wrong.png')),
//                      ),
//                      feedback: Container(
//                        width: 15,
//                        height: 15,
//                        color: Colors.white,
//                        child: Center(
//                            child: Image.asset('assets/images/wrong.png')),
//                      ),
//                      onDraggableCanceled: (Velocity velocity, Offset offset) {
//                        setState(() => position4 = offset);
//                      },
//                    ),
//                  ),
//                ],
//              ),
//            ),
//
//          ]),
            PhotoEditing(
              imagePath: 'assets/images/112.png',
              question: 'المناطق التى يحبها الرجال عند النساء',
              index: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0,left: 8.0),
              child: Container(
                child: Text(
                  ' قم باختيار العلامة التى تريد استخدامها للتعلي قم باختيار العلامة التى تريد استخدامها للتعلي قم باختيار العلامة التى تريد استخدامها للتعليم',
                  style: TextStyle(fontSize: 18.0, fontFamily: 'Cairo'),
                ),
              ),
            ),
            PhotoEditing(
              imagePath: 'assets/images/133.png',
              question: 'المناطق التى تحبها النساء عند الرجال',
              index: 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Builder(
                builder: (context) => Consumer<QuestionProvider>(
                  builder: (context, provider, _) => FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      if (provider.images.length < 2) {
                        Scaffold.of(context).hideCurrentSnackBar();
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text('يجب ان تعلم الصورتين')));
                      }
                      provider.generatePdfAndView(
                        context: context,
                        questionNum: 3,
                        type: QuestionType.Image,
                      );
                      Navigator.pushNamed(context, Q5.id);
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
                            'متابعه',
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
            ),
            SizedBox(
              height: 55.0,
            ),
          ],
        ),
      ),
    );
  }
}
