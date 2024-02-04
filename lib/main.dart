import 'package:flutter/material.dart';
import 'package:upon_site/pages/home_page.dart';
import 'package:upon_site/pages/home_page.mobile.dart';
import 'package:upon_site/utils/responsive_check.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = getDeviceWidth(context);
    final deviceType = size <= 500 ? DeviceType.mobile : DeviceType.desktop;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Upon Systems',
      home: deviceType == DeviceType.mobile
          ? const HomePageMobile()
          : const HomePage(),
    );
  }
}
