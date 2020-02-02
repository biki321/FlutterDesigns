import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.black,
      padding: EdgeInsets.all(0),
      width: 600,
      height: 300,
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "AIR",
              style: GoogleFonts.anton(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: "FREE",
              style: GoogleFonts.anton(
                color: Colors.black38,
                fontSize: 200,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
