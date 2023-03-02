import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Text(
            'Smart investiments with City Bank',
            style: GoogleFonts.openSans(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
