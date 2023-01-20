import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Text reusableText(
        {required String text,
        required bool isHead,
        required Color color,
        required double size}) =>
    Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: size,
        fontWeight: isHead ? FontWeight.bold : FontWeight.normal,
        color: color,
      ),
    );
