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
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 150,),
          NavigationText(
            title: "Home",
            qt: 1,
          ),
          flexible(20),
          NavigationText(
            title: "Category",
            qt: 1,
          ),
          flexible(20),
          NavigationText(
            title: "Cart",
            qt: 1,
          ),
          SizedBox(height: 50),
          Col(),
        ],
      ),
    );
  }
}

class NavigationText extends StatefulWidget {
  NavigationText({this.title, this.qt});

  @override
  String title;
  var qt;
  _NavigationTextState createState() => _NavigationTextState();
}

class _NavigationTextState extends State<NavigationText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: RotatedBox(
        quarterTurns: widget.qt,
        child: Text(
          widget.title,
          style: GoogleFonts.sigmarOne(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class Col extends StatefulWidget {
  @override
  _ColState createState() => _ColState();
}

class _ColState extends State<Col> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Logo(path: "assets/fb(1).png"),
        flexible(5),
        Logo(
          path: "assets/insta.png",
        ),
        flexible(5),
        Logo(path: "assets/twitter.png"),
        flexible(5),
      ],
    );
  }
}

class Logo extends StatefulWidget {
  Logo({this.path});
  String path;
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Image.asset(
        widget.path,
        fit: BoxFit.cover,
      ),
    );
  }
}
