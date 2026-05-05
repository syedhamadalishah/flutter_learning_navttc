import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My First Project',
          style: TextStyle(color: Colors.black, fontFamily: 'Compact'),
        ),
        backgroundColor: Colors.cyan.withOpacity(0.5),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 220,
          height: 330,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            border: Border.all(),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
