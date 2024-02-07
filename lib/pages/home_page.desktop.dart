import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upon_site/widgets/animated_text.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/background_gradient.png'),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(55),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 35, bottom: 35),
                      child: Row(
                        children: [
                          Image.asset('assets/logo_upon.png'),
                          const SizedBox(width: 400),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                            ),
                            child: Text(
                              'About Us',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromRGBO(139, 45, 190, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const SizedBox(width: 100),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                            ),
                            child: Text(
                              'Products',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromRGBO(139, 45, 190, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          const SizedBox(width: 100),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Contact us',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromRGBO(139, 45, 190, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 330, top: 10),
                              child: Opacity(
                                opacity: 0.4,
                                child: Image.asset(
                                  'assets/branco.png',
                                  scale: 0.8,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 200),
                              child: AnimatedText(isMobile: false),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 200, top: 280),
                              child: Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                  text: 'Design',
                                  style: GoogleFonts.spaceGrotesk(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' and',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 22,
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
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' transcend expectations',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '.',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 200, top: 420, right: 600),
                              child: Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                  text: 'Turning vision into ',
                                  style: GoogleFonts.spaceGrotesk(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 22,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'reality ',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'through bespoke ',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'software solutions ',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'tailored to take your business to ',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 22,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'new heights.',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
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
