import 'package:flutter/material.dart';

class LeftPart extends StatefulWidget {
  LeftPart({this.mainImgPath, Key key}) : super(key: key);
  String mainImgPath;

  @override
  //_LeftPartState createState() => _LeftPartState(mainImgPath:mainImgPath);
  _LeftPartState createState() => _LeftPartState();
}

class _LeftPartState extends State<LeftPart> {
  //_LeftPartState({this.mainImgPath});
  //String mainImgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.60,
      //padding: EdgeInsets.symmetric(horizontal: 90, vertical: 80),
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
                Icon(
                  Icons.arrow_left,
                  color: Colors.black26,
                  size: 70,
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.black26,
                  size: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
