import 'package:flutter/material.dart';

class AttendanceManagementprovider with ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void changeIndex(int index) {
    _selectedIndex = index;
  }

  final List<Map> _students = [
    {'name': 'Hamza Khan', 'Roll No.': 'Roll No. 1', 'image': 'assets/1.png'},
    {'name': 'Muhammad Ali', 'Roll No.': 'Roll No. 2', 'image': 'assets/2.png'},
    {'name': 'Hasnain', 'Roll No.': 'Roll No. 3', 'image': 'assets/3.png'},
    {'name': 'Zulqarnain', 'Roll No.': 'Roll No. 4', 'image': 'assets/4.png'},
    {'name': 'Talha', 'Roll No.': 'Roll No. 5', 'image': 'assets/5.png'},
    {'name': 'Malaika', 'Roll No.': 'Roll No. 6', 'image': 'assets/6.png'},
    {'name': 'Nimra', 'Roll No.': 'Roll No. 7', 'image': 'assets/8.png'},
    {'name': 'Suhail', 'Roll No.': 'Roll No. 8', 'image': 'assets/7.png'},
    {'name': 'Haseeb', 'Roll No.': 'Roll No. 9', 'image': 'assets/9.png'},
    {'name': 'Shahzaib', 'Roll No.': 'Roll No. 10', 'image': 'assets/10.png'},
    {'name': 'Shahab', 'Roll No.': 'Roll No. 11', 'image': 'assets/11.png'},
  ];
  List<dynamic> get students => _students;
  List<dynamic> _present_students = [];
  List<dynamic> get present_students => _present_students;

  void add_Student(int index) {
    present_students.add(index);
    notifyListeners();
  }

  void remove_Student(int index) {
    present_students.removeAt(index);
    notifyListeners();
  }

  void reset_Attendance() {
    present_students.clear();
    notifyListeners();
  }

  bool isSelected = true;
  void present() {
    isSelected = !isSelected;
    notifyListeners();
  }

  void absent() {
    isSelected = !isSelected;
    notifyListeners();
  }

  bool isColor = true;
  void changeColor() {
    const Color.fromARGB(255, 132, 255, 195);
    notifyListeners();
  }
}
