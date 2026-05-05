import 'package:flutter/material.dart';

class Taskprovider with ChangeNotifier {
  final List<dynamic> _Favourite = [];
  List get my => _Favourite;

  void Favourites(int index) {
    _Favourite.add(index);
    notifyListeners();
  }

  void UnFavourites(int index) {
    _Favourite.remove(index);
    notifyListeners();
  }

  Color color = Colors.black;
  Color get colour => color;
  void changeColor(Color colour) {
    color = colour;
    notifyListeners();
  }
}
