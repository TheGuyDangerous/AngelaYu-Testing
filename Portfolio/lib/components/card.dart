import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.cardicon,
      required this.verheight,
      required this.horwidth});

  final String text;
  final Icon cardicon;
  final double verheight;
  final double horwidth;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: const Color(0xFFD1C4E9),
        margin: EdgeInsets.symmetric(vertical: verheight, horizontal: horwidth),
        child: ListTile(
          leading: Icon(
            cardicon.icon,
            size: 30,
            color: const Color(0xFF512DA8),
          ),
          title: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                fontFamily: 'SansPro',
                fontWeight: FontWeight.bold,
                color: const Color(0xFF512DA8),
                fontSize: MediaQuery.of(context).size.width * 0.045,
                letterSpacing: 2,
              ),
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF512DA8),
          ),
        ),
      ),
    );
  }
}
