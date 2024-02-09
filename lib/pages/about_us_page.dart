import 'package:flutter/material.dart';
import 'package:upon_site/pages/about_us_page.desktop.dart';
import 'package:upon_site/pages/about_us_page.mobile.dart';
import 'package:upon_site/utils/responsive_check.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return responsiveChecker(
      context: context,
      deviceWidth: MediaQuery.of(context).size.width,
      desktopPage: const AboutUsPageDesktop(),
      mobilePage: const AboutUsPageMobile(),
    );
  }
}
