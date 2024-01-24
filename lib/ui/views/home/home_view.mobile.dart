import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:upon_website/ui/widgets/animated_text.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
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
            padding: const EdgeInsets.only(left: 30),
            child: Image.asset(
              'assets/logo_upon.png',
              height: 140,
              width: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 130,
              bottom: 50,
              right: 30,
              left: 30,
            ),
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
                    const SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                            ),
                            child: Text(
                              'About',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromRGBO(33, 8, 53, 3),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                            ),
                            child: Text(
                              'Products',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromRGBO(33, 8, 53, 3),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Contact us',
                              style: GoogleFonts.spaceGrotesk(
                                color: const Color.fromRGBO(33, 8, 53, 3),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
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
                              padding:
                                  const EdgeInsets.only(left: 20, top: 150),
                              child: Opacity(
                                opacity: 0.4,
                                child: Image.asset(
                                  'assets/branco.png',
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: AnimatedText(isMobile: true),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 45, top: 280, right: 25),
                              child: onNext(0),
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
