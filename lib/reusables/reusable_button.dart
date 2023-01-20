import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container reusableButton(
    BuildContext context, String text, Function ontap, bool isHome) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: () {
          ontap();
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black;
              }
              return isHome
                  ? const Color.fromARGB(255, 12, 30, 147)
                  : Colors.white;
            }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
        child: Text(text,
            style: GoogleFonts.poppins(
              color: isHome ? Colors.white : Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
      ));
}
