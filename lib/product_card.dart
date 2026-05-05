import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Watch Product',
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontFamily: 'Compact',
          ),
        ),
        backgroundColor: const Color.fromARGB(
          255,
          141,
          191,
          216,
        ).withOpacity(0.5),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 70, right: 20),
          child: Container(
            width: 250,
            height: 500,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(25, 28),
                  blurRadius: 9,
                  spreadRadius: 1,
                ),
              ],
              gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.grey],
                begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.centerEnd,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.arrow_back_ios, size: 17),
                      Text('Details', style: TextStyle(fontSize: 20)),
                      Icon(Icons.favorite_border_outlined),
                    ],
                  ),
                ),
                Image.asset('assets/watch.png', height: 150),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Galaxy watch 8',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(width: 64),
                              Text('\$ 300', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Biology is the Study of life. Computer is defined as "The Electronic Machine which accepts input from the user, processed them and generate result based on the input provided by the user".',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Colors Available',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    147,
                                    132,
                                    132,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 58, 37, 37),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40),
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    152,
                                    106,
                                    183,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 11),
                          Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 4),
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  blurStyle: BlurStyle.inner,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Buy Now',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 209, 205, 205),
    );
  }
}
