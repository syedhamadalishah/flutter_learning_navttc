import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackPractice extends StatefulWidget {
  const StackPractice({super.key});

  @override
  State<StackPractice> createState() => _StackPracticeState();
}

class _StackPracticeState extends State<StackPractice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 29, 142, 234),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.grid_view_rounded,
                                color: Colors.white,
                              ),
                              Icon(Icons.notifications, color: Colors.white),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.only(right: 120),
                          child: Text(
                            'Hi, Developers',
                            style: GoogleFonts.pacifico(
                              color: Colors.white,
                              fontSize: 23,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hint: Text(
                                'Search Here.......',
                                style: TextStyle(fontSize: 16),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 240,
              left: 20,
              child: Container(
                height: 220,
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 216, 97),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.category,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Category',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 158, 191),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.store,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'BookStore',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 14),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 207, 255, 152),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.video_library,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Classes',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 237, 132, 255),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Live Courses',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 20, 181, 255),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.assignment,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Free Courses',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 137, 238, 142),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.emoji_events,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'LeaderBoard',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 200,
              left: 15,
              right: 15,
              child: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Classes',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'see all',
                      style: GoogleFonts.inter(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 220, 84, 244),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 430,
              left: 0,
              right: 0,
              child: Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(color: Colors.white),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 5,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 211, 208, 208),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.all(10),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 119, 139, 147),
        ),
      ),
    );
  }
}
