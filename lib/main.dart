import 'package:flutter/material.dart';
import 'package:upon_site/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Upon Systems',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
