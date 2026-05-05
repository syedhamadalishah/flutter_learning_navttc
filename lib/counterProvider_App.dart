import 'package:first_class_1/Provider/counterProviderr.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CounterAppp extends StatefulWidget {
  const CounterAppp({super.key});

  @override
  State<CounterAppp> createState() => _CounterApppState();
}

class _CounterApppState extends State<CounterAppp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Counter App',
          style: GoogleFonts.pacifico(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Consumer<Counterproviderr>(
          builder: (context, obj, child) {
            return GestureDetector(
              onTap: () {
                obj.decrement();
                obj.changeColor(Colors.red);
                obj.differColor();
                obj.incColorCount();
              },
              child: Container(
                height: obj.count,
                width: obj.count,
                color: obj.color,
              ),
            );
          },
        ),
      ),

      floatingActionButton: Consumer<Counterproviderr>(
        builder: (context, obj, child) {
          return FloatingActionButton(
            onPressed: () {
              obj.increment();
            },

            backgroundColor: Colors.green,
            child: Icon(Icons.add, color: Colors.white),
          );
        },
      ),
    );
  }
}
