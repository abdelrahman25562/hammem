import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:hammem/screens/user/QuestionPage/Question1/Question1-Part3.dart';
import 'package:hammem/widgets/StarRating.dart';
import 'package:path_provider/path_provider.dart';

class Qpart1 extends StatefulWidget {
  static String id = 'Question1-part2';

  @override
  _Qpart1State createState() => _Qpart1State();
}

class _Qpart1State extends State<Qpart1> {
  static GlobalKey previewContainer = new GlobalKey();
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
            'اللسان والفم',
            style: TextStyle(
                fontSize: 18.0, color: Color(0xffFC009E), fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
          ),
          Txt('لعق الجسد')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.1,
          ),
          Txt('لعق الاصبع')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.1,
          ),
          Txt('لعق الشفه')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
          ),
          Txt('لعق حلمه الثدى')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.125,
          ),
          Txt('لمس الثدى')
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Text(
            'التقبيل',
            style: TextStyle(
                fontSize: 20.0, color: Color(0xffFC009E), fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.4,
          ),
          Txt('التقبيل الخفيف')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.41,
          ),
          Txt('التقبيل العميق')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.43,
          ),
          Txt('القبله الفرنسيه')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.82,
          ),
          Txt('قبله الشفة الواحده')
        ],
      ),
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          Text(
            'الأحضان',
            style: TextStyle(
                fontSize: 20.0, color: Color(0xffFC009E), fontFamily: 'Cairo'),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.35,
          ),
          Txt('الحضن الخفيف')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.32,
          ),
          Txt('الحضن الخلفى')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.9,
          ),
          Txt('أحضان ما بعد الجنس')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.28,
          ),
          Txt('حضن الملعقه')
        ],
      ),
      Row(
        children: <Widget>[
          Rating(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.24,
          ),
          Txt('مساج الخصيه')
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
                takeScreenShot();
                Navigator.pushNamed(context, Part3.id);
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
