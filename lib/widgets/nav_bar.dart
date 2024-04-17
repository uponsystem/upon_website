import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:upon_site/pages/about_us_page.dart';
import 'package:upon_site/utils/const_colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Color servicesColor = Colors.black;
  Color productColor = Colors.black;
  Color aboutColor = Colors.black;
  Color contactColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80, top: 35, bottom: 35),
      child: Row(
        children: [
          Image.asset(
            'assets/logo_upon.png',
            width: 180,
            height: 70,
          ),
          const SizedBox(width: 200),
          TextButton(
            onHover: (value) {
              setState(() {
                if (value == true) {
                  servicesColor = mainPurple;
                } else {
                  servicesColor = Colors.black;
                }
              });
            },
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white,
            ),
            child: Text(
              'Serviços',
              style: GoogleFonts.spaceGrotesk(
                color: servicesColor,
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
          ),
          const SizedBox(width: 50),
          TextButton(
            onPressed: () {},
            onHover: (value) {
              setState(() {
                if (value == true) {
                  productColor = mainPurple;
                } else {
                  productColor = Colors.black;
                }
              });
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white,
            ),
            child: Text(
              'Produtos',
              style: GoogleFonts.spaceGrotesk(
                color: productColor,
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
          ),
          const SizedBox(width: 50),
          TextButton(
            onHover: (value) {
              setState(() {
                if (value == true) {
                  aboutColor = mainPurple;
                } else {
                  aboutColor = Colors.black;
                }
              });
            },
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const AboutUsPage(),
                  ));
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white,
            ),
            child: Text(
              'Sobre',
              style: GoogleFonts.spaceGrotesk(
                color: aboutColor,
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
          ),
          const SizedBox(width: 50),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(20),
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            onHover: (value) {
              setState(() {
                if (value == true) {
                  contactColor = mainPurple;
                } else {
                  contactColor = Colors.black;
                }
              });
            },
            child: Text(
              'Contato',
              style: GoogleFonts.spaceGrotesk(
                color: contactColor,
                fontWeight: FontWeight.w500,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
