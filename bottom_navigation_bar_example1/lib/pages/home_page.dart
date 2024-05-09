import 'package:bottom_navigation_bar_example1/components/botttom_nav_bar.dart';
import 'package:bottom_navigation_bar_example1/pages/first_page.dart';
import 'package:bottom_navigation_bar_example1/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//bottom nav bar'da seçilen index'i control eder
  int _selectedIndex = 0;

//bu metod kullanıcı button bar'a bastığında
//bizim selectedIndex'imizi güncelleyecek
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //görüntülenecek sayfalar
  final List<Widget> _pages = [
    const FirstPage(),
    const SecondPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
