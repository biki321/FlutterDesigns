import 'package:flutter/material.dart';

class LeftPart extends StatefulWidget {
  //LeftPart({this.mainImgPath="assets/applewatch.jpg", this.changeBorderOfSmallImg, Key key})
  LeftPart(
      {this.mainImgPath = "assets/applewatch.jpg",
      this.changeBorderOfSmallImg});

  String mainImgPath;
  Function(String) changeBorderOfSmallImg;

  @override
  _LeftPartState createState() => _LeftPartState();
}

class _LeftPartState extends State<LeftPart> {
  List<String> paths = [
    "assets/frontview.jpg",
    "assets/normalview.png",
    "assets/backview.jpg",
    "assets/applewatch.jpg",
  ];
  int index = 0;
  void rightImg() {
    index += 1;
    if (index > 3) {
      index = 0;
    }
    //widget.mainImgPath = paths[index];

    widget.changeBorderOfSmallImg(paths[index]);
  }

  void leftImg() {
    index -= 1;
    if (index < 0) {
      index = 3;
    }
    //widget.mainImgPath = paths[index];

    widget.changeBorderOfSmallImg(paths[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.60,
      child: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              widget.mainImgPath,
              height: 250,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.30,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: leftImg,
                  icon: Icon(Icons.arrow_left),
                  iconSize: 80,
                  color: Colors.black12,
                ),
                IconButton(
                  onPressed: rightImg,
                  icon: Icon(Icons.arrow_right),
                  iconSize: 80,
                  color: Colors.black12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
