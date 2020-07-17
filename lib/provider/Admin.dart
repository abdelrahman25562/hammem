import 'package:flutter/cupertino.dart';

class AdminMode extends ChangeNotifier {
  bool inadmin = true;
  changeisadmin(bool value) {
    inadmin = value;
    notifyListeners();
  }
}
