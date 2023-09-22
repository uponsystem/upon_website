// ignore: depend_on_referenced_packages
// ignore_for_file: avoid_types_as_parameter_names

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/app_colors.dart';

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'F',
          style: GoogleFonts.spaceGrotesk(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 150,
          ),
        ),
        AnimatedTextKit(
          animatedTexts: [
            RotateAnimatedText(
              'using',
              textStyle: GoogleFonts.spaceGrotesk(
                color: const Color.fromRGBO(139, 45, 190, 1),
                fontWeight: FontWeight.bold,
                fontSize: 150,
              ),
            ),
            RotateAnimatedText(
              'oudend',
              textStyle: GoogleFonts.spaceGrotesk(
                color: const Color.fromRGBO(139, 45, 190, 1),
                fontWeight: FontWeight.bold,
                fontSize: 150,
              ),
            ),
            RotateAnimatedText(
              'rom',
              textStyle: GoogleFonts.spaceGrotesk(
                color: const Color.fromRGBO(139, 45, 190, 1),
                fontWeight: FontWeight.bold,
                fontSize: 150,
              ),
            ),
          ],
          repeatForever: true,
          pause: const Duration(milliseconds: 40),
          onNext: (p0, p1) {
            setState(() {});
          },
        ),
      ],
    );
  }
}

class AnimatedText extends StatefulWidget {
  const AnimatedText({super.key});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

onNext(int index) {
  return texts[index];
}

List texts = [
  SizedBox(
    width: 550,
    child: Text.rich(
      TextSpan(
        text: 'design, quality',
        style: GoogleFonts.spaceGrotesk(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        children: [
          TextSpan(
            text: ' and',
            style: GoogleFonts.spaceGrotesk(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: ' reability',
            style: GoogleFonts.spaceGrotesk(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: ' to forge digital solutions that',
            style: GoogleFonts.spaceGrotesk(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: ' transcend expectations',
            style: GoogleFonts.spaceGrotesk(
              color: purpleBodyText,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: '.',
            style: GoogleFonts.spaceGrotesk(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
  ),
];
