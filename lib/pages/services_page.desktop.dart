import 'package:flutter/material.dart';
import 'package:upon_site/widgets/animated_text.dart';
import 'package:upon_site/widgets/nav_bar.dart';

class ServicesPageDesktop extends StatefulWidget {
  const ServicesPageDesktop({super.key});

  @override
  State<ServicesPageDesktop> createState() => _ServicesPageDesktopState();
}

class _ServicesPageDesktopState extends State<ServicesPageDesktop> {
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
                    const NavBar(),
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
                              padding: EdgeInsets.only(left: 160),
                              child: AnimatedText(isMobile: false),
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
