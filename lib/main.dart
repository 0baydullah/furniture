import 'package:flutter/material.dart';
import 'package:furniture/page/details.dart';
import 'package:furniture/page/home.dart';
import 'package:furniture/page/page0.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page0(),

    );
  }
}

