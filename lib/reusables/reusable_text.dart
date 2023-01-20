import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Text reusableText(
        {required String text, required bool isHead, required Color color}) =>
    Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: isHead ? 34 : 22,
        fontWeight: isHead ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
