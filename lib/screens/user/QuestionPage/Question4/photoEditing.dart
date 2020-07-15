import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hammem/widgets/StarRating.dart';
import 'package:image_editor_pro/image_editor_pro.dart';
import 'package:path_provider/path_provider.dart';

class PhotoEditing extends StatefulWidget {
  final String imagePath;
  final String question;

  PhotoEditing({
    @required this.imagePath,
    @required this.question,
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
          question: widget.question,
        );
      })).then((geteditimage) {
        if (geteditimage != null) {
          setState(() {
            _image = geteditimage;
          });
        }
      }).catchError((er) {
        print(er);
      });
    });
  }

  Future<void> read() async {
    final filename = widget.imagePath.split('/')[2];
    var bytes = await rootBundle.load(widget.imagePath);
    String dir = (await getApplicationDocumentsDirectory()).path;
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
              color: Colors.blue,
              child: new Txt('أبدأ'),
            ),
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
                  color: Colors.blue,
                  child: new Txt('تعديل'),
                ),
              )
            ],
          );
  }
}
