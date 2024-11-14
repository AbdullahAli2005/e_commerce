import 'package:e_commerce_app/pages/account_screen.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
     HomeScreen(),
    const WishlistScreen(),
    CartPage(),
     AccountPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black, 
          currentIndex: _currentIndex, 
          onTap: _onTabTapped,
          selectedItemColor: Colors.green, 
          unselectedItemColor: Colors.black, 
          showSelectedLabels: true, 
          showUnselectedLabels: true, 
          iconSize: 26.0, // Adjust icon size
          items: [
            // Home Tab
            BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? const Icon(Icons.home) // Filled home icon when selected
                  : const Icon(Icons.home_outlined), // Outlined home when unselected
              label: 'Home',
            ),
            // Wishlist Tab
            BottomNavigationBarItem(
              icon: _currentIndex == 1
                  ? const Icon(Icons.favorite) // Filled wishlist icon
                  : const Icon(Icons.favorite_border_outlined), // Outlined wishlist icon
              label: 'Wishlist',
            ),
            // History Tab
            BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? const Icon(Icons.shopping_cart) // Filled history icon
                  : const Icon(Icons.shopping_cart_outlined), // Outlined history icon
              label: 'Cart',
            ),
            // Account Tab
            BottomNavigationBarItem(
              icon: _currentIndex == 3
                  ? const Icon(Icons.person) // Filled account icon
                  : const Icon(Icons.person_outline), // Outlined account icon
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
