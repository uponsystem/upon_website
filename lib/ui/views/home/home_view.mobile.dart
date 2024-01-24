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
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(55),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, top: 35, bottom: 35),
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
                            'About',
                            style: GoogleFonts.spaceGrotesk(
                              color: const Color.fromRGBO(33, 8, 53, 3),
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
                              color: const Color.fromRGBO(33, 8, 53, 3),
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
                              color: const Color.fromRGBO(33, 8, 53, 3),
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 100),
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
                            child: AnimatedText(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 200, top: 250),
                            child: onNext(0),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
