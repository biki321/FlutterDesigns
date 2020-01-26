import 'package:applewatch/constants/color.dart';
import 'package:flutter/material.dart';

Widget flexible(double w) => Flexible(
      fit: FlexFit.loose,
      child: Container(
        width: 10,
      ),
    );

class RowOfWatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        color: uni_color,
        width: MediaQuery.of(context).size.width * 0.30,
        height: 106,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            WatchImage("assets/frontview.jpg"),
            //flexible(10),
            WatchImage("assets/normalview.png"),
            //flexible(10),
            WatchImage("assets/backview.jpg"),
            //flexible(10),
            WatchImage("assets/applewatch.jpg"),
          ],
        ),
      ),
    );
  }
}

class WatchImage extends StatefulWidget {
  String path;
  WatchImage(this.path, {Key key}) : super(key: key);

  @override
  _WatchImageState createState() => _WatchImageState(path);
}

class _WatchImageState extends State<WatchImage> {
  _WatchImageState(this.path);
  String path;
  Color change_border_color = uni_color;

  void _onEnter(PointerEvent details) {
    setState(() {
      change_border_color = Colors.blue;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      change_border_color = uni_color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: Container(
        height: 87,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            
            width: 2,
            color: change_border_color,
            
          ),
        ),
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            path,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
