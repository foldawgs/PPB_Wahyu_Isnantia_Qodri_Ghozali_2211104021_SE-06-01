import 'package:flutter/material.dart';
import 'package:googlepon/my_bottomnav.dart';
// import 'package:googlepon/my_package.dart';
// import 'package:googlepon/my_tabbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavBar(),  
    );
  }
}