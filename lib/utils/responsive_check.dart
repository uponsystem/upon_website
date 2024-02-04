import 'package:flutter/material.dart';

enum DeviceType {
  desktop,
  mobile,
}

double getDeviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
