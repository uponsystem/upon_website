import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:upon_site/pages/home_page.dart';
import 'package:upon_site/utils/const_colors.dart';
import 'package:upon_site/widgets/carousel_founders.dart';

class AboutUsPageDesktop extends StatefulWidget {
  const AboutUsPageDesktop({super.key});

  @override
  State<AboutUsPageDesktop> createState() => _AboutUsPageDesktopState();
}

class _AboutUsPageDesktopState extends State<AboutUsPageDesktop> {
  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(55),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 35, bottom: 35),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const HomePage())),
                                child: Image.asset('assets/logo_upon.png'),
                              ),
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
                                onPressed: () {
                                  Navigator.pushNamed(context, '/AboutUsPage');
                                },
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
                                onPressed: () {
                                  Navigator.pushNamed(context, '/AboutUsPage');
                                },
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 950,
                                child: Text.rich(
                                  textAlign: TextAlign.left,
                                  TextSpan(
                                    text: 'Founded by software engineers from São Luís. \n',
                                    style: GoogleFonts.spaceGrotesk(
                                      color: mainPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      height: 1.9,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Upon, a software house that develops exceptional digital solutions based on design, quality, and reliability.\n',
                                        style: GoogleFonts.spaceGrotesk(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20,
                                          height: 1.9,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Inspired by the history of São Luís, our name',
                                        style: GoogleFonts.spaceGrotesk(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20,
                                          height: 1.9,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " 'Upon' reflects a commitment to progress, cultural respect, and excellence. \n",
                                        style: GoogleFonts.spaceGrotesk(
                                          color: mainBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          height: 1.9,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'As a beacon of innovation, we strive to blend tradition and modernity, providing unique digital experiences that transcend temporal boundaries.',
                                        style: GoogleFonts.spaceGrotesk(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          height: 1.9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 140),
                              Image.asset(
                                'assets/logo_reduzida_upon.png',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //
                    //
                    const SizedBox(height: 40),
                    Center(
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
