import 'package:flutter/material.dart';
import 'package:upon_site/pages/services_page.desktop.dart';
import 'package:upon_site/pages/services_page.mobile.dart';

import 'package:upon_site/utils/responsive_check.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {]
  @override
  Widget build(BuildContext context) {
    return responsiveChecker(
      context: context,
      deviceWidth: MediaQuery.of(context).size.width,
      desktopPage: const ServicesPageDesktop(),
      mobilePage: const ServicesPageMobile(),
    );
  }
}
