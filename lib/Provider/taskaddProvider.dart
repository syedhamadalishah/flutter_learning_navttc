import 'package:flutter/material.dart';

class Taskaddprovider with ChangeNotifier {
  double _height = 100;
  double get height => _height;
  double _width = 100;
  double get width => _width;

  void scale() {
    _width += 20;
    _height += 20;
    notifyListeners();
  }

  void shrink() {
    _width -= 20;
    _height -= 20;
    notifyListeners();
  }
}
