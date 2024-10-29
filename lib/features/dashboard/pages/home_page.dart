import 'package:flutter/material.dart';
import 'package:hey_food/common/components/app_colors.dart';
import 'package:hey_food/features/dashboard/screens/grocery_screen.dart';
import 'package:hey_food/features/dashboard/screens/home_screen.dart';
import 'package:hey_food/features/dashboard/screens/order_screen.dart';
import 'package:hey_food/features/dashboard/screens/search_screen.dart';
import 'package:hey_food/features/dashboard/screens/shops_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      const HomeScreen(),
      const GroceryScreen(),
      const ShopsScreen(),
      const SearchScreen(),
      const OrderScreen()
    ];
    return Scaffold(
      body: items[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: AppColors.primaryColor,
          //type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store_outlined),
                label: 'Grocery'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Shops'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long_outlined), label: 'Orders')
          ]),
    );
  }
}
