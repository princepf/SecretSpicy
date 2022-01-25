import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheSecretSpicy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavBar(),
    );
  }
}
