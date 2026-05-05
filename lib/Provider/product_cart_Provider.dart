import 'package:first_class_1/Screens/cart_screen.dart';
import 'package:first_class_1/Screens/product_screen.dart';
import 'package:first_class_1/Screens/profile.dart';
import 'package:flutter/material.dart';

class ProductCartProvider with ChangeNotifier {
  List<Map> Cards = [
    {
      'name': 'Watch',
      'price': 'Pkr: 5000',
      'quantity': 'Quantity',
      'image': 'assets/watch.png',
    },
    {
      'name': 'Shirt',
      'price': 'Pkr: 700',
      'quantity': 'Quantity',
      'image': 'assets/shirt.png',
    },
    {
      'name': 'Laptop',
      'price': 'Pkr: 120000',
      'quantity': 'Quantity',
      'image': 'assets/laptop.png',
    },
    {
      'name': 'Mobile',
      'price': 'Pkr: 40000',
      'quantity': 'Quantity',
      'image': 'assets/mobile.png',
    },
    {
      'name': 'Mouse',
      'price': 'Pkr: 1100',
      'quantity': 'Quantity',
      'image': 'assets/mouse.png',
    },
    {
      'name': 'Keyboard',
      'price': 'Pkr: 1600',
      'quantity': 'Quantity',
      'image': 'assets/keyboard.png',
    },
    {
      'name': 'Shoes',
      'price': 'Pkr: 4500',
      'quantity': 'Quantity',
      'image': 'assets/shoes.png',
    },
    {
      'name': 'Bag',
      'price': 'Pkr: 2000',
      'quantity': 'Quantity',
      'image': 'assets/bag.png',
    },
  ];
  int _Quantity = 20;
  int get Quantity => _Quantity;
  void decreaseInQuantity() {
    _Quantity--;
    notifyListeners();
  }

  void increaseInQuantity() {
    _Quantity--;
    notifyListeners();
  }

  List<dynamic> _neww = [];
  List<dynamic> get neww => _neww;

  void addFunction(int index) {
    _neww.add(index);
    notifyListeners();
  }

  void removeFunction(int index) {
    _neww.removeAt(index);
    notifyListeners();
  }

  int selectedIndex = 0;
}
