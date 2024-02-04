import 'package:flutter/material.dart';

Widget responsiveChecker({
  required BuildContext context,
  required double deviceWidth,
  required Widget desktopPage,
  required Widget mobilePage,
}) {
  return deviceWidth <= 500 ? mobilePage : desktopPage;
}
