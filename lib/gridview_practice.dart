import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridviewBuilder extends StatefulWidget {
  const GridviewBuilder({super.key});

  @override
  State<GridviewBuilder> createState() => _GridviewBuilder();
}

class _GridviewBuilder extends State<GridviewBuilder> {
  List<Color> MyColor = [
    const Color.fromARGB(255, 225, 219, 219),
    const Color.fromARGB(255, 225, 219, 219),
    const Color.fromARGB(255, 225, 219, 219),
    const Color.fromARGB(255, 225, 219, 219),
    const Color.fromARGB(255, 225, 219, 219),
    const Color.fromARGB(255, 225, 219, 219),
    const Color.fromARGB(255, 225, 219, 219),
    const Color.fromARGB(255, 225, 219, 219),
  ];
  List<Color> TextColor = [Colors.black, Colors.blueAccent, Colors.white];
  List<Map> Cards = [
    {'name': 'Watch', 'price': '12000', 'image': 'assets/watch.png'},
    {'name': 'Watch', 'price': '12000', 'image': 'assets/watch.png'},
    {'name': 'Watch', 'price': '12000', 'image': 'assets/watch.png'},
    {'name': 'Watch', 'price': '12000', 'image': 'assets/watch.png'},
    {'name': 'Watch', 'price': '12000', 'image': 'assets/watch.png'},
    {'name': 'Watch', 'price': '12000', 'image': 'assets/watch.png'},
    {'name': 'Watch', 'price': '12000', 'image': 'assets/watch.png'},
    {'name': 'Watch', 'price': '12000', 'image': 'assets/watch.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'GridView.Builder Practice',
              style: GoogleFonts.habibi(
                color: Colors.white,
                wordSpacing: 3,
                letterSpacing: 2,
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
            Icon(Icons.menu_outlined, color: Colors.white),
          ],
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),

      body: GridView.builder(
        itemCount: Cards.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 6,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 8, right: 10, top: 10),
            child: Container(
              decoration: BoxDecoration(
                color: MyColor[index],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(4, 5),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 225, 219, 219),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Image.asset(Cards[index]['image']),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Branded Watch',
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Icon(Icons.favorite_border),
                      ],
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      'Shipped In 3-4 Days',
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: EdgeInsets.only(right: 75),
                    child: Text(
                      '\$35.59',
                      style: GoogleFonts.inter(
                        letterSpacing: 1,
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: 130,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(color: Colors.black87, blurRadius: 5),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 7, left: 50, bottom: 8),
                      child: Text(
                        'Buy',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),

      bottomNavigationBar: NavigationBar(
        destinations: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],

        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
