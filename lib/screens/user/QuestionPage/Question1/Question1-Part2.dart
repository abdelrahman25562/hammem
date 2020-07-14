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
  List data = [
    'لعق الجسد',
    'لعق الاصبع',
    'لعق الشفه',
    'لعق حلمه الثدى',
    'لمس الثدى',
    'التقبيل',
    'التقبيل الخفيف',
    'التقبيل العميق',
    'القبله الفرنسيه',
    'قبله الشفة الواحده',
    'الأحضان',
    'الحضن الخفيف',
    'الحضن الخلفى',
    'أحضان ما بعد الجنس',
    'حضن الملعقه',
    'مساج الخصيه',
  ];
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
      Container(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Rating(
              questionPageNumber: 0,
              title: data[index],
            );
          },
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
