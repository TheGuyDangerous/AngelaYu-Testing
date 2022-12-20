import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textwidget extends StatelessWidget {
  final text;
  final FontStyle fontstyle;

  Textwidget({
    super.key,
    required this.text,
    required this.fontstyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: fontstyle == FontStyle.italic
          ? GoogleFonts.pacifico(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            )
          : GoogleFonts.sourceSansPro(
              textStyle: const TextStyle(
                fontFamily: 'SansPro',
                fontSize: 18.0,
                color: Color(0xFFD1C4E9),
                fontWeight: FontWeight.w700,
                letterSpacing: 2.5,
              ),
            ),
    );
  }
}
