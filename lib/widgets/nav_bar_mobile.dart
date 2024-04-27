import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({super.key});

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  Color servicesColor = Colors.black;
  Color productColor = Colors.black;
  Color aboutColor = Colors.black;
  Color contactColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: Text(
              'Serviços',
              style: GoogleFonts.spaceGrotesk(
                color: servicesColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: Text(
              'Produtos',
              style: GoogleFonts.spaceGrotesk(
                color: productColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: Text(
              'Sobre',
              style: GoogleFonts.spaceGrotesk(
                color: aboutColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Text(
              'Contato',
              style: GoogleFonts.spaceGrotesk(
                color: contactColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
