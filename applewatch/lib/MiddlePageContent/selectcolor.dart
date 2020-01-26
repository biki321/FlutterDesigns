import 'package:flutter/material.dart';
import 'package:applewatch/MiddlePageContent/mousehovercircle.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SelectColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AutoSizeText(
          "Select Color\:   ",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.normal,
            fontSize: 15,
          ),
        ),
        Row(
          children: <Widget>[
            Mouse_hover_circle(Colors.blue),
            SizedBox(
              width: 3,
            ),
            Mouse_hover_circle(Colors.red),
            SizedBox(
              width: 3,
            ),
            Mouse_hover_circle(Colors.yellow),
            SizedBox(
              width: 3,
            ),
            Mouse_hover_circle(Colors.pink),
            SizedBox(
              width: 3,
            ),
          ],
        ),
      ],
    );
  }
}
