import 'package:applewatch/constants/color.dart';
import 'package:flutter/material.dart';

Widget flexible(double w) => Flexible(
      fit: FlexFit.loose,
      child: Container(
        width: 10,
      ),
    );

class RowOfWatch extends StatelessWidget {
  RowOfWatch({this.changeMainImg, this.imgToBeBordered, Key key})
      : super(key: key);
  Function(String) changeMainImg;
  String imgToBeBordered;
  List<String> imgPaths = [
    "assets/frontview.jpg",
    "assets/normalview.png",
    "assets/backview.jpg",
    "assets/applewatch.jpg",
  ];

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
              path: imgPaths[0],
              changeMainImg: changeMainImg,
              borderColor: imgToBeBordered == imgPaths[0] ? Colors.blue: uni_color,
            ),
            //flexible(10),
            WatchImage(
              path: imgPaths[1],
              changeMainImg: changeMainImg,
              borderColor: imgToBeBordered == imgPaths[1] ? Colors.blue: uni_color,
            ),
            //flexible(10),

            WatchImage(
              path: imgPaths[2],
              changeMainImg: changeMainImg,
              borderColor: imgToBeBordered == imgPaths[2] ? Colors.blue: uni_color,
            ),
            //flexible(10),
            WatchImage(
              path: imgPaths[3],
              changeMainImg: changeMainImg,
              borderColor: imgToBeBordered == imgPaths[3] ?  Colors.blue: uni_color,
            ),
          ],
        ),
      ),
    );
  }
}

class WatchImage extends StatefulWidget {
  String path;
  Function(String) changeMainImg;
  Color borderColor;
  WatchImage({this.path, this.changeMainImg, this.borderColor, Key key})
      : super(key: key);

  @override
  _WatchImageState createState() => _WatchImageState();
}

class _WatchImageState extends State<WatchImage> {

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
            color: widget.borderColor,
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
