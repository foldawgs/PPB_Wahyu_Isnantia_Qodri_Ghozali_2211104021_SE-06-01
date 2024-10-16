import 'package:flutter/material.dart';
// import 'package:praktikum5/flexible_expanded.dart';
import 'package:praktikum5/custom_scroll_view.dart';
// import 'package:praktikum5/listview_builder.dart';
// import 'package:praktikum5/listview_separated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const FlexibleExpandedScreen(title: 'Flexible & Expanded'),
      home: const CustomScrollViewExample(),
    );
  }
}


