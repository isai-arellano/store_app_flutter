import 'package:flutter/material.dart';
import 'package:store_app_flutter/components/bottom_nav_bar.dart';
import 'package:store_app_flutter/ui/cart_screen.dart';
import 'package:store_app_flutter/ui/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Index con el que se controla el tab del bottom_navigation_bar
  int _selectedIndex = 0;

  // Esta función se encarga de actualizar el index , para que se pueda cambiar de tab
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  // Lista de paginas para mostrar
  final List<Widget> _pages = [
    const ShopScreen(),
    const CartScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}