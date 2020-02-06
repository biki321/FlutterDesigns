import 'package:applewatch/MiddlePageContent/container.dart';
import 'package:applewatch/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:applewatch/navbar/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "AppleWatch",
        theme: ThemeData(
          fontFamily: "Roboto",
        ),
        home: HomeView());
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: uni_color,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08,
              vertical: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Column(
              children: <Widget>[
                NavBar(),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border( bottom:BorderSide(color: Colors.black12, width: 2 )),
                  ),
                ),
                MiddlePageContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
