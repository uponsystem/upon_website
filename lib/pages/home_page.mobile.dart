import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upon_site/widgets/animated_text.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/background_gradient.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
            child: Material(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30),
              elevation: 100,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    Image.asset(
                      'assets/logo_upon.png',
                    ),
                    const SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'About Us',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromRGBO(139, 45, 190, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Products',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromRGBO(139, 45, 190, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Contact us',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromRGBO(139, 45, 190, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 30),
                              child: Opacity(
                                opacity: 0.4,
                                child: Image.asset(
                                  'assets/branco.png',
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 30, top: 0),
                              child: AnimatedText(isMobile: true),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 140, right: 25),
                              child: Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                  text: 'Design',
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
                                    const TextSpan(
                                      text: ' quality',
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
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
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
                            //
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 260, right: 25),
                              child: Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                  text: 'Turning vision into ',
                                  style: GoogleFonts.spaceGrotesk(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'reality ',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'through bespoke ',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'software solutions ',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'tailored to take your business to ',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'new heights.',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
