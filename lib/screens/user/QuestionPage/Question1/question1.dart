import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hammem/screens/user/QuestionPage/Question1/Question1-Part2.dart';
import 'package:hammem/widgets/StarRating.dart';
import 'package:path_provider/path_provider.dart';

class Question1 extends StatefulWidget {
  static String id = 'Question1';

  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  static GlobalKey previewContainer = new GlobalKey();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: previewContainer,
      child: Scaffold(
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
              'المساج',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xffFC009E),
                  fontFamily: 'Cairo'),
            ),
          ],
        ),
        SizedBox(
          width: 35.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.8,
                  ),
                  Txt('مساج الجسم الكامل')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.49,
                  ),
                  Txt('مساج القدم')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                  ),
                  Txt('مساج الرأس')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.75,
                  ),
                  Txt('مساج الجسم بالجسد')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.55,
                  ),
                  Txt('مساج الزيوت')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.48,
                  ),
                  Txt('مساج الثدى')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.75,
                  ),
                  Txt('مساج المؤخره')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.42,
                  ),
                  Txt('مساج البظر')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.68,
                  ),
                  Txt('مساج المهبل')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.71,
                  ),
                  Txt('مساج القضيب')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.8,
                  ),
                  Txt('مساج الظهر والرقبه')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.35,
                  ),
                  Txt('مساج الدبر')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.95,
                  ),
                  Txt('مساج البروستاتا')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.93,
                  ),
                  Txt('G-spotمساج ال')
                ],
              ),
              Row(
                children: <Widget>[
                  Rating(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.6,
                  ),
                  Txt('مساج الخصيه')
                ],
              ),
            ],
          ),
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
                  Navigator.pushNamed(context, Qpart1.id);
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
        ),
      ])),
    );
  }

  takeScreenShot() async {
    RenderRepaintBoundary boundary =
        previewContainer.currentContext.findRenderObject();
    ui.Image image = await boundary.toImage();
    final directory = (await getApplicationDocumentsDirectory()).path;
    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData.buffer.asUint8List();
    print(pngBytes);
    File imgFile = new File('$directory/screenshot.png');
    imgFile.writeAsBytes(pngBytes);
  }
}
