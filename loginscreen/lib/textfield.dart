import 'package:flutter/material.dart';
import 'package:loginscreen/color.dart';
import 'package:google_fonts/google_fonts.dart';

class Field extends StatelessWidget {
  @override
  String title;
  static final Color _darkModeShadowOneColor = Colors.black.withOpacity(0.12);
  static final Color _darkModeShadowTwoColor = Color.fromRGBO(46, 46, 46, 0.6);
  static final Color _lightModeShadowOneColor = Colors.black.withOpacity(0.1);
  static final Color _lightModeShadowTwoColor = Colors.white.withOpacity(0.5);

  Field({this.title, Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
       Text( 
            title,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
           ),
        SizedBox(height:5,),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: backGroundScreenColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(-5, -5),
                color: _lightModeShadowTwoColor,
                blurRadius: 2,
              ),
              BoxShadow(
                offset: Offset(5, 5),
                color: _lightModeShadowOneColor,
                blurRadius: 2,
              ),
            ],
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric( horizontal: 15, vertical: 5 ),
            ),
          ),
        ),
      ],
    );
  }
}
