import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:upon_site/pages/home_page.dart';
import 'package:upon_site/utils/const_colors.dart';

class AboutUsPageMobile extends StatefulWidget {
  const AboutUsPageMobile({super.key});

  @override
  State<AboutUsPageMobile> createState() => _AboutUsPageMobileState();
}

class _AboutUsPageMobileState extends State<AboutUsPageMobile> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(55),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 35),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const HomePage())),
                        child: Image.asset(
                          'assets/logo_upon.png',
                          width: 160,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: deviceWidth > 355
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    child: Text(
                                      'About Us',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: const Color.fromRGBO(139, 45, 190, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  GestureDetector(
                                    child: Text(
                                      'Products',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: const Color.fromRGBO(139, 45, 190, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  GestureDetector(
                                    child: Text(
                                      'Contact us',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: const Color.fromRGBO(139, 45, 190, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  GestureDetector(
                                    child: Text(
                                      'About Us',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: const Color.fromRGBO(139, 45, 190, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                    child: Text(
                                      'Products',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: const Color.fromRGBO(139, 45, 190, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                    child: Text(
                                      'Contact us',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: const Color.fromRGBO(139, 45, 190, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                    const SizedBox(height: 10),
                    Center(
                      child: Image.asset(
                        'assets/logo_reduzida_upon.png',
                        width: 140,
                        height: 140,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: deviceWidth,
                              child: Text.rich(
                                textAlign: TextAlign.left,
                                TextSpan(
                                  text: 'Founded by software engineers from São Luís.',
                                  style: GoogleFonts.spaceGrotesk(
                                    color: mainPurple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    height: 1.9,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' Upon, a software house that develops exceptional digital solutions based on design, quality, and reliability.',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        height: 1.9,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Inspired by the history of São Luís, our name',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        height: 1.9,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " 'Upon' reflects a commitment to progress, cultural respect, and excellence. \n",
                                      style: GoogleFonts.spaceGrotesk(
                                        color: mainBlue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        height: 1.9,
                                      ),
                                    ),
                                    /*          TextSpan(
                                      text:
                                          'As a beacon of innovation, we strive to blend tradition and modernity, providing unique digital experiences that transcend temporal boundaries.',
                                      style: GoogleFonts.spaceGrotesk(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        height: 1.9,
                                      ),
                                    ), */
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 140),
                          ],
                        ),
                      ),
                    ),
                    //
                    //
                    const SizedBox(height: 40),
                    /* Center(
                      child: Text(
                        'Founders of Upon',
                        style: GoogleFonts.spaceGrotesk(
                          color: strongPurple,
                          fontWeight: FontWeight.w600,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    //
                    //
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 200),
                        child: SizedBox(
                          width: 1200,
                          height: 270,
                          child: CarouselWithIndicatorDemo(),
                        ),
                      ),
                    ), */
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
