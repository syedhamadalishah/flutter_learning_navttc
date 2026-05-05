import 'package:first_class_1/Provider/attendance_managementProvider.dart';
import 'package:first_class_1/Screens/absent_student.dart';
import 'package:first_class_1/Screens/attendance_management.dart';
import 'package:first_class_1/Screens/present_student.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewHomeScreen extends StatefulWidget {
  const NewHomeScreen({super.key});

  @override
  State<NewHomeScreen> createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<NewHomeScreen> {
  final List<dynamic> pagess = [
    AttendanceManagement(),
    PresentStudent(),
    AbsentStudent(),
  ];
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AttendanceManagementprovider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 250, 252),
      body: pagess[provider.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 63, 81, 181),
        unselectedItemColor: const Color.fromARGB(255, 115, 115, 115),
        onTap: (index) {
          provider.changeIndex(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AttendanceManagement(),
                  ),
                );
              },
              child: Icon(Icons.groups_2),
            ),
            label: 'All Students',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PresentStudent()),
                );
              },
              child: Icon(Icons.verified),
            ),
            label: 'Present Students',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AbsentStudent()),
                );
              },
              child: Icon(Icons.person_off),
            ),
            label: 'Absent Students',
          ),
        ],
      ),
    );
  }
}
