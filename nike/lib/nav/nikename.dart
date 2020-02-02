import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NikeName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 100,
            child: Text(
              "NIKE",
              style: GoogleFonts.anton(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(10.0, 10.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                 
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
