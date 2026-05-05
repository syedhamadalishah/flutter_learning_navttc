import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int start = 0;
  void Increment() {
    start++;
  }

  void Decrement() {
    if (start > 0) {
      start--;
    }
  }

  void Reset() {
    start = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter App',
          style: GoogleFonts.heptaSlab(
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 180),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  start.toString(),
                  style: GoogleFonts.aboreto(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),

          // SizedBox(height: 100),
          Padding(
            padding: EdgeInsets.only(top: 240),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: InkWell(
                    onTap: () {
                      Decrement();
                      setState(() {});
                    },
                    child: Container(
                      width: 53,
                      height: 53,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 86, 148, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Icon(Icons.minimize, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Reset();
                    setState(() {});
                  },
                  child: Container(
                    width: 53,
                    height: 53,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 86, 148, 255),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: InkWell(
                    onTap: () {
                      Increment();
                      setState(() {});
                    },
                    child: Container(
                      width: 53,
                      height: 53,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 86, 148, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blueAccent,
      //   foregroundColor: Colors.white,
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     Increment();
      //     setState(() {});
      //   },
      // ),
    );
  }
}
