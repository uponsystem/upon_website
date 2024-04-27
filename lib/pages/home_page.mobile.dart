import 'package:flutter/material.dart';
import 'package:upon_site/widgets/animated_text.dart';
import 'package:upon_site/widgets/nav_bar_mobile.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'assets/logo_upon.png',
                          width: 160,
                          height: 60,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const NavBarMobile(),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 40),
                              child: Opacity(
                                opacity: 0.4,
                                child: Image.asset(
                                  'assets/branco.png',
                                  color: Colors.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 30, top: 80),
                              child: AnimatedText(isMobile: true),
                            ),

                            //
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
