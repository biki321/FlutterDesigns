import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:applewatch/MiddlePageContent/MouseHoverBigCircle.dart';

class SelectSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AutoSizeText(
          "Select Size\:   ",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.normal,
            fontSize: 15,
          ),
        ),
        Row(
          children: <Widget>[
            Mouse_Hover_Big_Circle("S"),
            SizedBox(
              width: 5,
            ),
            Mouse_Hover_Big_Circle("M"),
            SizedBox(
              width: 5,
            ),
            Mouse_Hover_Big_Circle("L"),
            SizedBox(
              width: 5,
            ),
           Mouse_Hover_Big_Circle("XL"),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ],
    );
  }
}