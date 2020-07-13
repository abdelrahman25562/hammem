import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';

class QuestionProvider extends ChangeNotifier {
  List<QuestionModel> questionsAnswers = [];

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
    notifyListeners();
  }
}
