import 'package:flutter/material.dart';
import 'package:thesecretespicy/home_page.dart';
import 'package:thesecretespicy/profil_page.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<Widget> screen = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
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
        selectedIconTheme: const IconThemeData(size: 30),
        selectedItemColor: const Color(0xFF84AB5C),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Trips"),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined), label: "Profile"),
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
