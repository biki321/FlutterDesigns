import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget flexible(double s) => Flexible(
      fit: FlexFit.loose,
      child: Container(height: s),
    );

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      //width: MediaQuery.of(context).size.width,
      width:  55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          NavigationText(
            title: "Home",
          ),
          flexible(20),
          NavigationText(
            title: "Category",
          ),
          flexible(20),
          NavigationText(
            title: "Cart",
          ),
          flexible(20),
        ],
      ),
    );
  }
}

class NavigationText extends StatefulWidget {
  NavigationText({this.title});

  @override
  String title;
  _NavigationTextState createState() => _NavigationTextState();
}

class _NavigationTextState extends State<NavigationText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          widget.title,
          style: GoogleFonts.sigmarOne(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
