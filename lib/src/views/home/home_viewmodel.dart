import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int _indexScreen = 0;
  int get indexScreen => _indexScreen;

  changeIndexScreen(int value) {
    _indexScreen = value;
    notifyListeners();
  }
}
