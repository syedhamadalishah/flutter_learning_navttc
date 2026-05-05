import 'package:first_class_1/Provider/product_cart_Provider.dart';
import 'package:first_class_1/Screens/cart_screen.dart';
import 'package:first_class_1/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  // int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Products Screen',
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
              itemCount: 8,
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
                            // autofocus: true,
                            // focusColor: Colors.black,
                            // borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.black,
                            onTap: () {
                              if (carting.neww.contains(index)) {
                                carting.removeFunction(index);
                              } else {
                                carting.addFunction(index);
                              }
                            },
                            child: Container(
                              width: 140,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 127, 80),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Add To Cart',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: 27,
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
    );
  }
}
