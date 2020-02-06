import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginscreen/color.dart';
import 'package:loginscreen/textfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LogIn",
      home: Scaffold(
        backgroundColor: backGroundScreenColor,
        body: Authentic(),
      ),
    );
  }
}

Widget flexible({double h = 0, double w = 0}) => Flexible(
      fit: FlexFit.loose,
      child: Container(
        width: w,
        height: h,
      ),
    );

class Authentic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 90),
          Text(
            "welcome",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(242, 6, 108, 1),
              ),
            ),
          ),
          Text(
            "Sign In",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Field(
            title: "Email",
          ),
          SizedBox(height: 25),
          Field(
            title: "Password",
          ),
          Container(
            height: 50,
            child: Center(
              child: Text(
                "Forgot  Password?",
                style: GoogleFonts.roboto(
                  letterSpacing: 2,
                  fontSize: 13,
                  color: Color.fromRGBO(242, 6, 108, 1),
                ),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            hoverColor: Colors.pink[200],
            color: Color.fromRGBO(238, 73, 175, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Sign In",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    letterSpacing: 2,
                    color: Color.fromRGBO(220, 227, 235, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Logos(
                path: "assets/logo/fb1.png",
              ),
              SizedBox(width: 30),
              Logos(
                path: "assets/logo/insta.png",
              ),
              SizedBox(width: 30),
              Logos(
                path: "assets/logo/twitter.png",
              ),
              SizedBox(width: 30),
            ],
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              height: 60,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Don't have an account yet ?  ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.pink[200],
                    ),
                  ),
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(242, 6, 108, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Logos extends StatelessWidget {
  Logos({this.path, Key key}) : super(key: key);
  String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              path,
            )),
      ),
    );
  }
}
