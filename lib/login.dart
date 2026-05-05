import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'My First Project',
      //     style: TextStyle(color: const Color.fromARGB(255, 208, 171, 171), fontFamily: 'Compact'),
      //   ),
      //   backgroundColor: Colors.cyan.withOpacity(0.5),
      //   centerTitle: true,
      // ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.white],
            begin: AlignmentGeometry.topRight,
            end: AlignmentGeometry.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Column(
            children: [
              Text(
                'Jobsly',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
