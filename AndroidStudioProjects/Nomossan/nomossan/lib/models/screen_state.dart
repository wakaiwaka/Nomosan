import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenState extends ChangeNotifier {
  int _screenIndex = 0;

  int get screenIndex {
    return _screenIndex;
  }

  void changeScreenIndex(int index) {
    _screenIndex = index;
    notifyListeners();
  }
}
