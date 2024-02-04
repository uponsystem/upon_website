import 'package:flutter/material.dart';
import 'package:upon_site/pages/home_page.desktop.dart';
import 'package:upon_site/pages/home_page.mobile.dart';
import 'package:upon_site/utils/responsive_check.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return responsiveChecker(
      context: context,
      deviceWidth: MediaQuery.of(context).size.width,
      desktopPage: const HomePageDesktop(),
      mobilePage: const HomePageMobile(),
    );
  }
}
