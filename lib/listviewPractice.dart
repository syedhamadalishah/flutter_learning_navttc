import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'WhatsApp',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: Icon(Icons.camera_alt_outlined, color: Colors.white),
            ),
            Icon(Icons.menu, color: Colors.white),
          ],
        ),
        backgroundColor: Colors.black45,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Muhammad Ali'),
            subtitle: Text('Pa bike ba zo ki na pa BRT ki'),
            trailing: Text('2:20Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Muhammad Arif'),
            subtitle: Text('Senga Classes la ba kala zo'),
            trailing: Text('2:10Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Muhammad Umar'),
            subtitle: Text('Assalamualaikum'),
            trailing: Text('1:20Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Hamza'),
            subtitle: Text('Sam sha Sam'),
            trailing: Text('12:10Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Kifayat'),
            subtitle: Text('Alaka Raza Kana'),
            trailing: Text('6:20Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Asad Bro'),
            subtitle: Text('Okay Noted'),
            trailing: Text('7:20Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Suhail CR'),
            subtitle: Text('Attendance me olagolo darta tabidar yam'),
            trailing: Text('10:50Am'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Altaf'),
            subtitle: Text('Okay Sir Darzam'),
            trailing: Text('11:20Am'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Sajjad'),
            subtitle: Text('Sae Da Sir Saba Ba Oshi'),
            trailing: Text('8:10Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Rashid'),
            subtitle: Text('Kaar Kawa Kaar'),
            trailing: Text('6:00Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Sir Talha Iqbal'),
            subtitle: Text('Thanks Sir ❤'),
            trailing: Text('10:05Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Muhammad Ali'),
            subtitle: Text('Pa bike ba zo ki na pa BRT ki'),
            trailing: Text('2:20Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Muhammad Ali'),
            subtitle: Text('Pa bike ba zo ki na pa BRT ki'),
            trailing: Text('2:20Pm'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Muhammad Ali'),
            subtitle: Text('Pa bike ba zo ki na pa BRT ki'),
            trailing: Text('2:20Pm'),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
