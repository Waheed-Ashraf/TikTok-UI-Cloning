import 'package:flutter/material.dart';
import 'package:tik_tok_cloning_ui/views/bottom_nav_bar/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const BottomNavBar(),
    );
  }
}
