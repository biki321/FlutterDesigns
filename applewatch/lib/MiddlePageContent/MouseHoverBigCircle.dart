import 'package:applewatch/constants/color.dart';
import 'package:flutter/material.dart';

class Mouse_Hover_Big_Circle extends StatefulWidget {
  Mouse_Hover_Big_Circle(this.size, {Key key}) : super(key: key);

  final String size;
  @override
  _Mouse_Hover_Big_CircleState createState() =>
      _Mouse_Hover_Big_CircleState(size);
}

Color chn_color = uni_color;

class _Mouse_Hover_Big_CircleState extends State<Mouse_Hover_Big_Circle> {
  _Mouse_Hover_Big_CircleState(this.size);
  final String size;

  @override
  Widget build(BuildContext context) {
    void _onEnter(PointerEvent details) {
      setState(() {
        chn_color = Colors.blue[300];
      });
    }

    void _onExit(PointerEvent details) {
      setState(() {
        chn_color = uni_color;
      });
    }

    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: Stack(
        children: <Widget>[
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: chn_color, width: 1),
            ),
            child: Center(
              child: Text(
                size,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
