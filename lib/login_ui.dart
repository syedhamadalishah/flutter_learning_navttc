import 'package:flutter/material.dart';

class LogIn_UI extends StatelessWidget {
  const LogIn_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 37, 70, 128),
              const Color.fromARGB(255, 94, 105, 125),
            ],
            begin: AlignmentGeometry.directional(0, double.infinity),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 43, bottom: 15, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(100),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightGreen.withOpacity(0.7),
                      const Color.fromARGB(255, 52, 179, 238).withOpacity(0.7),
                      const Color.fromARGB(255, 215, 94, 94).withOpacity(0.7),
                    ],
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/login.png',
                      height: 130,
                      width: double.infinity,
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Center(
                      child: Text(
                        'By signing In You Are Agreeing To Our',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Terms And Privacy Policy',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 85, 208, 89),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          hintText: 'Enter Your Email',

                          suffixIcon: Icon(Icons.mail, color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white),

                          label: Text(
                            'Email',
                            style: TextStyle(color: Colors.white),
                          ),
                          alignLabelWithHint: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.black12,
                              width: 2,
                            ),
                          ),
                        ),
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        showCursor: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          suffixIcon: Icon(Icons.lock, color: Colors.white),
                          hintText: 'Enter Your PassWord',
                          hintStyle: TextStyle(color: Colors.white),
                          label: Text(
                            'PassWord',
                            style: TextStyle(color: Colors.white),
                          ),
                          alignLabelWithHint: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: Colors.black12,
                              width: 2,
                            ),
                          ),
                        ),
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 1),
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          // decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: const Color.fromARGB(255, 85, 208, 89),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(25),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.lightGreen.withOpacity(0.7),
                      const Color.fromARGB(255, 52, 179, 238).withOpacity(0.7),
                      const Color.fromARGB(255, 215, 94, 94).withOpacity(0.7),
                    ],
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 30),
                      child: Row(
                        children: [
                          Container(
                            width: 110,
                            height: 39,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 7,
                                left: 37,
                                bottom: 8,
                              ),
                              child: Text(
                                'LogIn',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 110,
                            height: 39,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: Colors.lightBlue,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 7,
                                left: 27,
                                bottom: 8,
                              ),
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'LogIn With Touch ID',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(height: 9),
                    Image.asset('assets/fingerprint.png', height: 60),
                    SizedBox(height: 5),
                    Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 55, right: 55),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.facebook),
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.telegram),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
