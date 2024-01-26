// ignore: depend_on_referenced_packages
// ignore_for_file: avoid_types_as_parameter_names

// ignore: depend_on_referenced_packages
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedText extends StatefulWidget {
  final bool isMobile;
  const AnimatedText({super.key, required this.isMobile});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: widget.isMobile ? 25 : 24),
          child: Text(
            'F',
            style: GoogleFonts.spaceGrotesk(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: widget.isMobile ? 120 : 180,
            ),
          ),
        ),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'oudend',
              textStyle: GoogleFonts.spaceGrotesk(
                color: const Color.fromRGBO(139, 45, 190, 1),
                fontWeight: FontWeight.bold,
                fontSize: widget.isMobile ? 80 : 150,
              ),
            ),
            TypewriterAnimatedText(
              'rom',
              textStyle: GoogleFonts.spaceGrotesk(
                color: const Color.fromRGBO(139, 45, 190, 1),
                fontWeight: FontWeight.bold,
                fontSize: widget.isMobile ? 80 : 150,
              ),
            ),
            TypewriterAnimatedText(
              'using',
              textStyle: GoogleFonts.spaceGrotesk(
                color: const Color.fromRGBO(139, 45, 190, 1),
                fontWeight: FontWeight.bold,
                fontSize: widget.isMobile ? 80 : 150,
              ),
            ),
          ],
          repeatForever: true,
          pause: const Duration(milliseconds: 1000),
          onNext: (p0, p1) {
            setState(() {});
          },
        ),
      ],
    );
  }
}
