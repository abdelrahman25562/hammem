import 'dart:async';
import 'dart:typed_data';

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

class PdfViewerPage extends StatelessWidget {
  final String path;

  const PdfViewerPage({Key key, this.path}) : super(key: key);

  Future<void> _shareMixed() async {
    try {
      final ByteData bytes3 = await rootBundle.load(path);

      await Share.files(
        'esys images',
        {
          'hammemResult.pdf': bytes3.buffer.asUint8List(),
        },
        '*/*',
        text: 'My optional text.',
      );
    } catch (e) {
      print('error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: _shareMixed,
          ),
        ],
      ),
      path: path,
    );
  }
}
