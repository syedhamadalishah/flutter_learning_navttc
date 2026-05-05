import 'package:first_class_1/Provider/product_cart_Provider.dart';
import 'package:first_class_1/Screens/product_screen.dart';
import 'package:first_class_1/product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<ProductCartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Add To Cart Screen',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(223, 2, 2, 153),
        centerTitle: true,
        // backgroundColor: Colors.white70,
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.only(right: 10),
        //     child: Icon(Icons.shopping_cart, size: 30, color: Colors.white),
        //   ),
        // ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: cart.neww.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 5,
              ),
              itemBuilder: (context, index) {
                return Consumer<ProductCartProvider>(
                  builder: (context, carting, child) {
                    return Card(
                      surfaceTintColor: Colors.black,
                      shadowColor: Colors.black54,
                      color: const Color.fromARGB(255, 245, 245, 245),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 110,
                            child: Image.asset(
                              carting.Cards[index]['image'].toString(),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                carting.Cards[index]['name'].toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                carting.Cards[index]['price'].toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                carting.Cards[index]['quantity'].toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                carting.Quantity.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),

                          InkWell(
                            onTap: () {
                              if (cart.neww.contains(index)) {
                                cart.removeFunction(index);
                              }
                            },
                            child: Container(
                              width: 140,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 152, 255, 152),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Remove From Cart',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: cart.selectedIndex,
      //   onTap: (int value) {
      //     cart.selectedIndex = value;
      //   },
      //   selectedItemColor: Colors.lightGreenAccent,
      //   unselectedItemColor: Colors.grey,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => ProductScreen()),
      //           );
      //         },
      //         child: Icon(Icons.home),
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //   ],
      // ),
    );
  }
}
