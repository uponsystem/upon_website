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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: widget.isMobile ? 25 : 24),
              child: Text(
                'F',
                style: GoogleFonts.spaceGrotesk(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: widget.isMobile ? 110 : 180,
                ),
              ),
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'using',
                  textStyle: GoogleFonts.spaceGrotesk(
                    color: const Color.fromRGBO(139, 45, 190, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: widget.isMobile ? 70 : 150,
                  ),
                ),
                TypewriterAnimatedText(
                  'rom',
                  textStyle: GoogleFonts.spaceGrotesk(
                    color: const Color.fromRGBO(139, 45, 190, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: widget.isMobile ? 70 : 150,
                  ),
                ),
                TypewriterAnimatedText(
                  'ounded',
                  textStyle: GoogleFonts.spaceGrotesk(
                    color: const Color.fromRGBO(139, 45, 190, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: widget.isMobile ? 68 : 150,
                  ),
                ),
              ],
              repeatForever: true,
              pause: const Duration(milliseconds: 7000),
              onNext: (p0, p1) {
                setState(() {});
              },
            ),
          ],
        ),
        //
        //
        //
        widget.isMobile
            ? AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Design, qualidade e confiabilidade para criar soluções digitais que\ntranscendem as expectativas.',
                    textStyle: GoogleFonts.spaceGrotesk(
                      color: const Color.fromRGBO(139, 45, 190, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'Somos uma software house Ludovicense, especializada na criação de aplicativos que \nelevam a experiência digital.',
                    textStyle: GoogleFonts.spaceGrotesk(
                      color: const Color.fromRGBO(139, 45, 190, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'Upon homenageia a história de São Luís, terra natal dos fundadores.\nO Tupi-Guarani Upaon-Açu nome dado à ilha de São Luís pelos indígenas.',
                    textStyle: GoogleFonts.spaceGrotesk(
                      color: const Color.fromRGBO(139, 45, 190, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
                repeatForever: true,
                pause: const Duration(milliseconds: 4000),
                onNext: (p0, p1) {
                  setState(() {});
                },
              )
            : AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Design, qualidade e confiabilidade para criar soluções digitais \nque transcendem as expectativas.',
                    textStyle: GoogleFonts.spaceGrotesk(
                      color: const Color.fromRGBO(139, 45, 190, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'Somos uma software house Ludovicense, especializada na criação de aplicativos e plataformas \nque elevam a experiência digital.',
                    textStyle: GoogleFonts.spaceGrotesk(
                      color: const Color.fromRGBO(139, 45, 190, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TypewriterAnimatedText(
                    'Upon homenageia a história de São Luís, terra natal dos fundadores.\nO Tupi-Guarani Upaon-Açu nome dado à ilha de São Luís pelos indígenas.',
                    textStyle: GoogleFonts.spaceGrotesk(
                      color: const Color.fromRGBO(139, 45, 190, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
                repeatForever: true,
                pause: const Duration(milliseconds: 4000),
                onNext: (p0, p1) {
                  setState(() {});
                },
              ),
      ],
    );
  }
}
