// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabSwitch extends StatefulWidget {
  const TabSwitch({super.key});

  @override
  State<TabSwitch> createState() => _TabSwitchState();
}

class _TabSwitchState extends State<TabSwitch> {
  @override
  Widget build(BuildContext context) {
    return CustomSlidingSegmentedControl<int>(
      initialValue: 1,
      children: {
        1: Text(
          'Origin',
          style: GoogleFonts.spaceGrotesk(
            color: Colors.purple[900],
            fontWeight: FontWeight.bold,
          ),
        ),
        2: Text(
          'Principles',
          style: GoogleFonts.spaceGrotesk(
            color: Colors.purple[900],
            fontWeight: FontWeight.bold,
          ),
        ),
      },
      padding: 18,
      innerPadding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(8),
      ),
      thumbDecoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.3),
            blurRadius: 4.0,
            spreadRadius: 1.0,
            offset: const Offset(
              0.0,
              2.0,
            ),
          ),
        ],
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInToLinear,
      onValueChanged: (v) {
        print(v);
      },
    );
  }
}
