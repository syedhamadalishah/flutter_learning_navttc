import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Drawerandnavbar extends StatefulWidget {
  const Drawerandnavbar({super.key});

  @override
  State<Drawerandnavbar> createState() => _DrawerandnavbarState();
}

class _DrawerandnavbarState extends State<Drawerandnavbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Drawer And Bottom NavBar'),
          elevation: 10,
          leadingWidth: 50,
          toolbarHeight: 75,
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 142, 202, 219),
          child: ListView(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(1),
                  border: Border(bottom: BorderSide(width: 2)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/login.png', fit: BoxFit.cover),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Syed Hamad Ali Shah',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'asyedhamad29@gmail.com',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                leading: Icon(Icons.dashboard, color: Colors.black, size: 28),
                title: Text(
                  'Dashboard',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 28,
                ),
                title: Text(
                  'Notifications',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.category, color: Colors.black, size: 28),
                title: Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.store, color: Colors.black, size: 28),
                title: Text(
                  'Stores',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.reviews, color: Colors.black, size: 28),
                title: Text(
                  'Reviews',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.feedback, color: Colors.black, size: 28),
                title: Text(
                  'Feedback',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.black, size: 28),
                title: Text(
                  'LogOut',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.transparent,
          elevation: 10,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black, size: 18),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.black, size: 18),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info, color: Colors.black, size: 18),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
