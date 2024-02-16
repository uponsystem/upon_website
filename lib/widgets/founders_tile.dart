import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upon_site/utils/const_colors.dart';

class FoundersTile extends StatelessWidget {
  final String imageAsset;
  final String founderName;
  final String founderDescription;
  final bool isMobile;
  const FoundersTile({super.key, required this.imageAsset, required this.founderName, required this.founderDescription, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Column(
            children: [
              Image.asset(
                imageAsset,
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 10),
              Text(
                founderName,
                textAlign: TextAlign.center,
                style: GoogleFonts.spaceGrotesk(
                  color: mainPurple,
                  fontWeight: FontWeight.w600,
                  fontSize: 34,
                ),
              )
            ],
          )
        : Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset(
                  imageAsset,
                ),
              ),
              const SizedBox(width: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    founderName,
                    style: GoogleFonts.spaceGrotesk(
                      color: mainPurple,
                      fontWeight: FontWeight.w600,
                      fontSize: 34,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    founderDescription,
                    style: GoogleFonts.spaceGrotesk(
                      color: strongPurple,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ],
              )
            ],
          );
  }
}
