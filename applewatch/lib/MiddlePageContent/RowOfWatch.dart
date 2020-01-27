import 'package:applewatch/constants/color.dart';
import 'package:flutter/material.dart';

Widget flexible(double w) => Flexible(
      fit: FlexFit.loose,
      child: Container(
        width: 10,
      ),
    );

class RowOfWatch extends StatelessWidget {
  RowOfWatch({this.changeMainImg, Key key}) : super(key: key);
  Function(String) changeMainImg;

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
            WatchImage(
                path: "assets/frontview.jpg", changeMainImg: changeMainImg),
            //flexible(10),
            WatchImage(
                path: "assets/normalview.png", changeMainImg: changeMainImg),
            //flexible(10),
            WatchImage(
                path: "assets/backview.jpg", changeMainImg: changeMainImg),
            //flexible(10),
            WatchImage(
                path: "assets/applewatch.jpg", changeMainImg: changeMainImg),
          ],
        ),
      ),
    );
  }
}

class WatchImage extends StatefulWidget {
  String path;
  Function(String) changeMainImg;
  WatchImage({this.path, this.changeMainImg, Key key}) : super(key: key);

  @override
  _WatchImageState createState() => _WatchImageState();
}

class _WatchImageState extends State<WatchImage> {
  //_WatchImageState({this.path, this.changeMainImg});
  //String path;
  //Function(String) changeMainImg;
  Color change_border_color = uni_color;

  void _onTap() {
    /*
    setState(() {
      change_border_color =
          change_border_color == uni_color ? Colors.blue : uni_color;
    });*/
    widget.changeMainImg(widget.path);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
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
            widget.path,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
