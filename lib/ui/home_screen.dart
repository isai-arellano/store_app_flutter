import 'package:flutter/material.dart';
import 'package:store_app_flutter/ui/components/bottom_nav_bar.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton( 
          icon: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              ),
          ),
          onPressed:() {
            Scaffold.of(context).openDrawer();
          },
        ),
        )
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'lib/images/nike.png',
                color: Colors.white,
                width: 150,
                ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                  )
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                  ),
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.white),
                  )
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(left: 25.0,bottom: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                  ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                  )
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}