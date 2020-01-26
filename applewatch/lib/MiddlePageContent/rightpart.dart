import 'package:applewatch/MiddlePageContent/button.dart';
import 'package:applewatch/MiddlePageContent/selectcolor.dart';
import 'package:applewatch/MiddlePageContent/selectsize.dart';
import 'package:applewatch/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

Widget flexible(double h) => Flexible(
      fit: FlexFit.loose,
      child: Container(
        height: h,
      ),
    );

class RightPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: uni_color,
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AutoSizeText(
            "Apple Watch",
            style: TextStyle(
              fontSize: 22,
            ),
            maxLines: 1,
            maxFontSize: 22,
            //textAlign: TextAlign.start,
          ),
          flexible(14),
          AutoSizeText(
            "Silver Aluminum Case with \nSport Band",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.3,
            ),
            maxFontSize: 30,
            maxLines: 2,
          ),
          flexible(14),
          AutoSizeText(
            "\$139",
            style: TextStyle(
              color: Colors.blue[300],
              fontWeight: FontWeight.normal,
              fontSize: 27,
            ),
            maxLines: 1,
            maxFontSize: 27,
          ),
          flexible(35),
          AutoSizeText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Habitant morbi tristique senectus et netus et malesuada fames ac. Nunc aliquet bibendum enim facilisis gravida neque convallis a. Porta lorem mollis aliquam ut porttitor. Tempor id eu nisl nunc.",
            style: TextStyle(
              height: 1.5,
              color: Colors.black87,
              fontWeight: FontWeight.normal,
              fontSize: 17,
            ),
            maxLines: 4,
            maxFontSize: 17,
          ),
          flexible(25),
          SelectColor(),
          flexible(10),
          SelectSize(),
          SizedBox(height: 50,),
          Row(
            children: <Widget>[
              AddItemesButton(),
              SizedBox(
                width: 20,
              ),
              addCart,
            ],
          ),
        ],
      ),
    );
  }
}
