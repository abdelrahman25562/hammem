import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:image_editor_pro/image_editor_pro.dart';
import 'package:path_provider/path_provider.dart';

class PhotoEditing extends StatefulWidget {
  final String imagePath;
  final String question;
  final int index;

  PhotoEditing({
    @required this.imagePath,
    @required this.question,
    @required this.index,
  });

  @override
  _PhotoEditingState createState() => _PhotoEditingState();
}

class _PhotoEditingState extends State<PhotoEditing> {
  Future<void> getimageditor() async {
    await read().whenComplete(() {
      final geteditimage =
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ImageEditorPro(
          appBarColor: Colors.blue,
          bottomBarColor: Colors.blue,
          image: _image,
          index: widget.index,
          question: widget.question,
        );
      })).then((geteditimage) async {
        if (geteditimage != null) {
          setState(() {
            _image = geteditimage;
          });
//          await Provider.of<QuestionProvider>(context, listen: false)
//              .generatePdfAndView(
//            context: context,
//            type: QuestionType.Image,
//            questionNum: 3,
//          );
        }
      }).catchError((er) {
        print(er);
      });
    });
  }

  Future<void> read() async {
    final filename = widget.imagePath.split('/')[2];
    var bytes = await rootBundle.load(widget.imagePath);
    String dir = Platform.isAndroid
        ? (await getExternalStorageDirectory()).path
        : (await getApplicationDocumentsDirectory()).path;
    _image = await writeToFile(bytes, '$dir/$filename');
    setState(() {});
  }

  Future<File> writeToFile(ByteData data, String path) {
    final buffer = data.buffer;
    return new File(path).writeAsBytes(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
  }

  File _image;

  @override
  Widget build(BuildContext context) {
    return _image == null
        ? Center(
            child: RaisedButton(
                onPressed: () async {
                  getimageditor();
                },
                color: Color(0xffFC009E),
                child: Text(
                  'ابدأ',
                  style: TextStyle(
                      fontSize: 13.0, fontFamily: 'Cairo', color: Colors.white),
                )),
          )
        : Column(
            children: <Widget>[
              Container(
                height: 500,
                width: double.infinity,
                child: Image.file(_image),
              ),
              Center(
                child: RaisedButton(
                    onPressed: () async {
                      getimageditor();
                    },
                    color: Color(0xffFC009E),
                    child: Text(
                      'تعديل',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Cairo',
                          color: Colors.white),
                    )),
              )
            ],
          );
  }
}
