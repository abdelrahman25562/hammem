import 'package:flutter/cupertino.dart';

class Mpdalhub extends ChangeNotifier {
  bool isloading = false;
  chageisloading(bool value) {
    isloading = value;
    notifyListeners();
  }
}
