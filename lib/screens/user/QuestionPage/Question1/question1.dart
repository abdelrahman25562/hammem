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
  List<String> data = [
    'مساج الجسم الكامل',
    'مساج القدم',
    'مساج الرأس',
    'مساج الجسم بالجسد',
    'مساج الزيوت',
    'مساج الثدى',
    'مساج المؤخره',
    'مساج البظر',
    'مساج المهبل',
    'مساج القضيب',
    'مساج الظهر والرقبه',
    'مساج الدبر',
    'مساج البروستاتا',
    'G-spotمساج ال',
    'مساج الخصيه',
  ];

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: previewContainer,
      child: Directionality(
        textDirection: TextDirection.rtl,
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
                    style: TextStyle(fontSize: 25.0, fontFamily: 'Cairo'),
                  )
                ],
              ),
              Row(
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
                        Navigator.pushNamed(context, Qpart1.id);
                      },
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: <Color>[
                            Colors.blueAccent,
                            Colors.pinkAccent
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          alignment: Alignment.center,
                          child: Text(
                            'متابعه',
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
            ],
          ),
        ),
      ),
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
