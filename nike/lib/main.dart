import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike/nav/bigtitle.dart';
import 'package:nike/nav/navbar.dart';
import 'package:nike/nav/nikename.dart';
import 'package:nike/nav/shopnow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(child: Screen()),
      ),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(
            "assets/nike.jpg",
          ),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 200,
            child: NavBar(),
          ),
          Positioned(
            left: 200,
            top: 1,
            child: NikeName(),
          ),
          Positioned(
            left: 450,
            top: 200,
            child: BigTitle(),
          ),
          Positioned(
            left: 620,
            bottom: 5,
            child: Container(
              width: 80,
              height: 30,
              child: Text(
                "NIKE AIR",
                style: GoogleFonts.anton(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 200,
            child: ShopNow(),
          ),
        ],
      ),
    );
  }
}
