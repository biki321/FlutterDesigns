import 'package:flutter/material.dart';



class LeftPart extends StatefulWidget {
  
  LeftPart(this.mainImgPath, {Key key}):super(key:key);
  String mainImgPath;

  @override
  _LeftPartState createState() => _LeftPartState(mainImgPath);
}

class _LeftPartState extends State<LeftPart> {
  _LeftPartState(this.mainImgPath);
  String mainImgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
               
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.height * 0.60,
                //padding: EdgeInsets.symmetric(horizontal: 90, vertical: 80),
                child: Center(
                  child: Image.asset(
                    mainImgPath,
                    height: 250,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              );
  }
}