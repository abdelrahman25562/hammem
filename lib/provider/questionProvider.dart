import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdfLib;

class QuestionProvider extends ChangeNotifier {
  String pdfPath = '';
  List<QuestionModel> questionsAnswers = [];
  final pdfLib.Document pdf = pdfLib.Document(deflate: zlib.encode);

  void addAnswer({QuestionModel element}) {
    bool exist = false;
    questionsAnswers.forEach((item) {
      if (item.question == element.question) {
        exist = true;
      }
    });
    if (exist) {
      int index = questionsAnswers
          .indexWhere((item) => item.question == element.question);
      questionsAnswers[index].answer = element.answer;
    } else {
      questionsAnswers.add(element);
    }
    print(questionsAnswers.length);
    notifyListeners();
  }

  final List<BaseballModel> asz = [
    BaseballModel(
      key: 0,
      name: 'asa???>>',
      coach: 'dsd',
      players: 12,
    ),
    BaseballModel(
      key: 0,
      name: 'asaxc',
      coach: 'dxcxxcxcsd',
      players: 100,
    ),
    BaseballModel(
      key: 0,
      name: 'a',
      coach: 'db',
      players: 500,
    ),
    BaseballModel(
      key: 0,
      name: 'asacbvbvbbvbvb',
      coach: 'dsscsd',
      players: 0,
    ),
  ];

  generatePdfAndView(
      {BuildContext context, QuestionType type, int questionNum}) async {
    List<PdfModel> answerData = [];
    var data = await rootBundle.load("assets/fonts/Cairo-Regular.ttf");
    var myFont = pdfLib.Font.ttf(data);
    var titleStyle = pdfLib.TextStyle(
      font: myFont,
      fontSize: 34.0,
      wordSpacing: 5.0,
    );
    var myStyle = pdfLib.TextStyle(
      font: myFont,
      fontSize: 16.0,
    );
    if (questionNum == 0) {
      pdf.addPage(
        pdfLib.MultiPage(
          build: (context) => [
            pdfLib.Center(
              child: pdfLib.Text(
                'حميم',
                style: titleStyle,
                textDirection: pdfLib.TextDirection.rtl,
              ),
            ), //
          ],
        ),
      );
    }
    if (type == QuestionType.Image) {
      questionsAnswers.forEach((element) async {
        final ByteData byteImage = await rootBundle.load(element.answer);
        final PdfImage image = PdfImage.file(
          pdf.document,
          bytes: byteImage.buffer.asUint8List(),
        );
        answerData.add(
          PdfModel(
            question: element.question,
            image: image,
          ),
        );
      });
      pdf.addPage(
        pdfLib.Page(
          build: (pdfLib.Context context) {
            return pdfLib.Column(
              children: answerData
                  .map(
                    (e) => pdfLib.Row(
                      mainAxisAlignment: pdfLib.MainAxisAlignment.start,
                      crossAxisAlignment: pdfLib.CrossAxisAlignment.center,
                      children: [
                        pdfLib.Image(
                          e.image,
                          height: 25.0,
                          width: 125.0,
                        ),
                        pdfLib.Spacer(),
                        pdfLib.Text(
                          e.question,
                          style: myStyle,
                          textDirection: pdfLib.TextDirection.rtl,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ); // Center
          },
        ),
      );
    }

    final String dir = (await getApplicationDocumentsDirectory()).path;
    print(':::::::::::' + dir);
    final String path = '$dir/hammemResult.pdf';
    pdfPath = path;
    final File file = File(path);
    await file.writeAsBytes(pdf.save());
  }
}

class PdfModel {
  String question;
  PdfImage image;

  PdfModel({
    this.question,
    this.image,
  });
}

class BaseballModel {
  dynamic key;
  String name;
  String coach;
  int players;

  BaseballModel({
    this.key,
    this.name = "",
    this.coach = "",
    this.players = 0,
  });
}
