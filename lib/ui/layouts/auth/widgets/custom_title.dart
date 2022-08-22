import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'logo-bg.png',
            width: 70,
            height: 70,
          ),
          const SizedBox(height: 20),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Happening Now',
              style: GoogleFonts.montserratAlternates(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
