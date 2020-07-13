import 'package:flutter/material.dart';
import 'package:hammem/Model/questionModel.dart';

class QuestionProvider extends ChangeNotifier {
  List<QuestionModel> questionsAnswers = [];

  void addAnswer({QuestionModel element}) {
    questionsAnswers.add(element);
    notifyListeners();
  }
}
