import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hammem/Model/questionModel.dart';
import 'package:hammem/screens/pdfViewerPage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdfLib;

class QuestionProvider extends ChangeNotifier {
  String pdfPath = '';
  List<File> images = new List<File>(2);
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
      if (questionsAnswers[index].id == 1 &&
          !questionsAnswers[index].answer.contains(element.answer)) {
        questionsAnswers[index].answer =
            questionsAnswers[index].answer + '    ,\n    ' + element.answer;
      } else {
        questionsAnswers[index].answer = element.answer;
        print(':::::' + questionsAnswers[index].answer);
      }
    } else {
      questionsAnswers.add(element);
      print(':::::' + element.answer);
    }

    notifyListeners();
  }

  generatePdfAndView({
    BuildContext context,
    QuestionType type,
    int questionNum,
  }) async {
    List<PdfImageModel> answerImagedData = [];
    List<PdfTextModel> answerTextData = [];
    var data = await rootBundle.load("assets/fonts/Cairo-Regular.ttf");
    var myFont = pdfLib.Font.ttf(data);
    var titleStyle = pdfLib.TextStyle(
      font: myFont,
      fontSize: 28.0,
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
    if (questionNum == 1) {
      final PdfImage image1 = PdfImage.file(
        pdf.document,
        bytes: (await rootBundle.load(
          'assets/images/one.png',
        ))
            .buffer
            .asUint8List(),
      );
      answerImagedData.add(
        PdfImageModel(
          question: 'element.question',
          image: image1,
        ),
      );

      final PdfImage image2 = PdfImage.file(
        pdf.document,
        bytes: (await rootBundle.load(
          'assets/images/two.png',
        ))
            .buffer
            .asUint8List(),
      );
      answerImagedData.add(
        PdfImageModel(
          question: 'element.question',
          image: image2,
        ),
      );
      final PdfImage image3 = PdfImage.file(
        pdf.document,
        bytes: (await rootBundle.load(
          'assets/images/three.png',
        ))
            .buffer
            .asUint8List(),
      );
      answerImagedData.add(
        PdfImageModel(
          question: 'element.question',
          image: image3,
        ),
      );

      pdf.addPage(
        pdfLib.Page(
          build: (pdfLib.Context context) {
            return pdfLib.Column(
              children: [
                pdfLib.Expanded(
                  child: pdfLib.Container(
                    color: PdfColors.white,
                    child: pdfLib.Image(image1),
                  ),
                ),
                pdfLib.Expanded(
                  child: pdfLib.Container(
                    color: PdfColors.white,
                    child: pdfLib.Image(image2),
                  ),
                ),
                pdfLib.Expanded(
                  child: pdfLib.Container(
                    color: PdfColors.white,
                    child: pdfLib.Image(image3),
                  ),
                ),
              ],
            ); // Center
          },
        ),
      );
    }
    if (type == QuestionType.Image && questionNum != 3) {
      questionsAnswers.forEach((element) async {
        if (element.id == questionNum) {
          final PdfImage image = PdfImage.file(
            pdf.document,
            bytes: (await rootBundle.load(
              element.answer,
            ))
                .buffer
                .asUint8List(),
          );
          print('name:::::**' + image.name);
          answerImagedData.add(
            PdfImageModel(
              question: element.question,
              image: image,
            ),
          );
        }
      });
      pdf.addPage(
        pdfLib.Page(
          build: (pdfLib.Context context) {
            return pdfLib.Column(
              children: answerImagedData
                  .map(
                    (e) => pdfLib.Row(
                      mainAxisAlignment: pdfLib.MainAxisAlignment.start,
                      crossAxisAlignment: pdfLib.CrossAxisAlignment.center,
                      children: [
                        pdfLib.Container(
                          width: 100,
                          height: 25,
                          color: PdfColors.white,
                          child: pdfLib.Image(e.image),
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
    } else if (type == QuestionType.Text) {
      questionsAnswers.forEach((element) async {
        if (element.id == questionNum) {
          answerTextData.add(
            PdfTextModel(
              question: element.question,
              answer: element.answer,
            ),
          );
          print('len  :::  ' + element.answer);
        }
      });
      pdf.addPage(
        pdfLib.Page(
          build: (pdfLib.Context context) {
            return pdfLib.Column(
              children: answerTextData
                  .map(
                    (e) => pdfLib.Column(
                      mainAxisAlignment: pdfLib.MainAxisAlignment.start,
                      crossAxisAlignment: pdfLib.CrossAxisAlignment.start,
                      children: [
                        pdfLib.Text(
                          e.question,
                          style: titleStyle,
                          textDirection: pdfLib.TextDirection.rtl,
                        ),
                        pdfLib.SizedBox(
                          height: 50.0,
                        ),
                        pdfLib.Text(
                          e.answer,
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
    if (questionNum == 10) {
      final String dir = (await getApplicationDocumentsDirectory()).path;
      print(':::::::::::' + dir);
      final String path = '$dir/hammemResult.pdf';
      final File file = File(path);
      await file.writeAsBytes(pdf.save()).whenComplete(
            () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PdfViewerPage(
                  path: path,
                  images: images,
                ),
              ),
            ),
          );
      pdfPath = path;
    }
  }

  Future<PdfImage> pdfImageFromImage({
    @required PdfDocument pdf,
    @required ByteData image,
  }) async {
    final ByteData bytes = image;

    return PdfImage(
      pdf,
      image: bytes.buffer.asUint8List(),
      width: 150,
      height: 30,
    );
  }
}

class PdfImageModel {
  String question;
  PdfImage image;

  PdfImageModel({
    this.question,
    this.image,
  });
}

class PdfTextModel {
  String question;
  String answer;

  PdfTextModel({
    this.question,
    this.answer,
  });
}
