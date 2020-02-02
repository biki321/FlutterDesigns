import 'package:flutter/material.dart';
import 'package:nike/nav/navbar.dart';

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
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Stack(
        children: <Widget>[
          Container(
           
            child: Image.asset(
              "assets/nike.jpg",
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            right: 10,
            child: NavBar(),
          ),
        ],
      ),
    );
  }
}
