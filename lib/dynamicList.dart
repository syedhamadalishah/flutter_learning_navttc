import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dynamiclist extends StatefulWidget {
  const Dynamiclist({super.key});

  @override
  State<Dynamiclist> createState() => _Dynamiclist();
}

class _Dynamiclist extends State<Dynamiclist> {
  List<Map> Fruits = [
    {'image': 'assets/mango.png', 'color': Colors.amber},
    {'image': 'assets/orange.png', 'color': Colors.orange},
    {'image': 'assets/grapes.png', 'color': Colors.lightGreenAccent},
    {'image': 'assets/blueeberry.png', 'color': Colors.lightBlue},
    {'image': 'assets/blackberry.png', 'color': Colors.black},
    {
      'image': 'assets/papaya.png',
      'color': const Color.fromARGB(255, 167, 140, 41),
    },
    {
      'image': 'assets/peach.png',
      'color': const Color.fromARGB(255, 179, 59, 59),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'List Of Fruits',
              style: GoogleFonts.hachiMaruPop(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(Icons.menu_outlined, color: Colors.white),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 139, 123, 123),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Fruits.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 16, left: 14, right: 14),
            child: Container(
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                color: Fruits[index]['color'],
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(4, 5),
                    blurRadius: 3,
                  ),
                ],
              ),

              child: Image.asset(Fruits[index]['image'].toString()),
            ),
          );
        },
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          Icon(Icons.home),
          Icon(Icons.search),
          Icon(Icons.person),
        ],

        backgroundColor: const Color.fromARGB(255, 139, 123, 123),
      ),
    );
  }
}
