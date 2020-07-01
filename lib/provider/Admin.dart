import 'package:flutter/cupertino.dart';

class AdminMode extends ChangeNotifier {
  bool inadmin = false;
  changeisadmin(bool value) {
    inadmin = value;
    notifyListeners();
  }
}
