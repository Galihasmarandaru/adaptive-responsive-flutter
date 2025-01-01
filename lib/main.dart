// import 'package:adaptive_responsive/features/homepage.dart';
import 'package:adaptive_responsive/features/navigationpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Adaptive & Responsive',
      // home: Homepage(),

      // Cara membuat Navigation yang responsive
      home: Navigationpage(),
    );
  }
}
