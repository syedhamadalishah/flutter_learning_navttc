import 'package:flutter/material.dart';

class Addtaskprovider with ChangeNotifier {
  final List<dynamic> _myList = [];
  List<dynamic> get myList => _myList;
  bool _isDone = false;
  bool get isDone => _isDone;

  void done() {
    _isDone = isDone;
    notifyListeners();
  }

  Color _color = Colors.amber;
  Color get color => _color;

  void changeColor(Color newcolor) {
    _color = newcolor;
    notifyListeners();
  }

  void adding(int index) {
    myList.add(index);
    notifyListeners();
  }

  void removing(int index) {
    myList.removeAt(index);
    notifyListeners();
  }
}
