import 'package:first_class_1/Provider/navigator_Provider.dart';
import 'package:first_class_1/Screens/cart_screen.dart';
import 'package:first_class_1/Screens/product_screen.dart';
import 'package:first_class_1/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<dynamic> pages = [ProductScreen(), CartScreen(), Profile()];
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigatorProvider>(context);
    return Scaffold(
      body: pages[provider.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        currentIndex: provider.selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 128),
        unselectedItemColor: const Color.fromARGB(255, 128, 125, 125),
        onTap: (index) {
          provider.changeIndex(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Add To Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
