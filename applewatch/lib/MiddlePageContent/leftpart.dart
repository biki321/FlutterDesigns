import 'package:flutter/material.dart';

class LeftPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return Container(
                color: Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.height * 0.60,
                //padding: EdgeInsets.symmetric(horizontal: 90, vertical: 80),
                child: Center(
                  child: Image.asset(
                    "assets/applewatch.jpg",
                    height: 250,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              );
  }
}