import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:share_extend/share_extend.dart';

class PdfViewerPage extends StatelessWidget {
  final String path;
  final List<File> images;

  const PdfViewerPage({Key key, this.path, this.images}) : super(key: key);

  Future<void> _shareMixed() async {
    final image1 = images[0];
    final image2 = images[1];
    try {
      final ByteData bytes1 = await rootBundle.load(image1.path);
      final ByteData bytes2 = await rootBundle.load(image2.path);
      final ByteData bytes3 = await rootBundle.load(path);
      await Share.files(
        'esys images',
        {
          '1.png': bytes1.buffer.asUint8List(),
          '2.png': bytes2.buffer.asUint8List(),
          'hammemResult.pdf': bytes3.buffer.asUint8List(),
        },
        '*/*',
        text: 'My hammem Results.',
      );
      print(bytes1.buffer.asUint8List().toString());
    } catch (e) {
      print('error: ' + e.toString());
    }
  }

  _shareMultipleImages() async {
    final image1 = images[0];
    final image2 = images[1];
//    List<ByteData> assetList = [];
//    final ByteData bytes1 = await rootBundle.load(image1.path);
//    final ByteData bytes2 = await rootBundle.load(image2.path);
//    final ByteData bytes3 = await rootBundle.load(path);
//    assetList..addAll([bytes1, bytes2, bytes3]);
    var items = List<String>();
    items..addAll([image1.path, image2.path, path]);
//    for (var asset in assetList) {
//      String path =
//          await _writeByteToImageFile(await asset.getByteData(quality: 30));
//      items.add(path);
//    }
    ShareExtend.shareMultiple(items, "image", subject: "share muti image")
        .catchError(
      (error) => print(
        error.toString(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('path :::: ::: ::::' + path);
    return PDFViewerScaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: _shareMultipleImages,
          ),
        ],
      ),
      path: path,
    );
  }
}
