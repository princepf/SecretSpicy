import 'package:flutter/material.dart';
import 'package:thesecretespicy/home_page.dart';
import 'package:thesecretespicy/profil_page.dart';

import 'cook_and_chefs_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<Widget> screen = [
    const HomePage(),
    const CookAndChefsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 20,
        selectedIconTheme: const IconThemeData(size: 32),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined), label: "cooks"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Profile"),
        ],
      ),
      body: Center(
        child: screen.elementAt(currentIndex),
      ),
    );
  }
}
