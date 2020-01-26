import 'package:applewatch/constants/color.dart';
import 'package:flutter/material.dart';

class Mouse_hover_circle extends StatefulWidget {
  Mouse_hover_circle(this.circle_color, {Key key}) : super(key: key);

  final Color circle_color;
  @override
  _Mouse_hover_circleState createState() =>
      _Mouse_hover_circleState(circle_color);
}

Color change_color = uni_color;

class _Mouse_hover_circleState extends State<Mouse_hover_circle> {
  _Mouse_hover_circleState(this.circle_color);
  final Color circle_color;

  @override
  Widget build(BuildContext context) {
    void _onEnter(PointerEvent details) {
      setState(() {
         change_color = Colors.blue;
      });
    }

    void _onExit(PointerEvent details) {
      setState(() {
         change_color = uni_color;
      });
    }

    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: Stack(
        children: <Widget>[
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: uni_color,
              shape: BoxShape.circle,
              border: Border.all(
                color: change_color,
                width: 1,
              ),
            ),
          ),
          Positioned(
            left: 4.5,
            top: 4.5,
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                color: circle_color,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
