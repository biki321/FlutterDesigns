import 'package:applewatch/MiddlePageContent/RowOfWatch.dart';
import 'package:applewatch/MiddlePageContent/leftpart.dart';
import 'package:applewatch/MiddlePageContent/rightpart.dart';
import 'package:flutter/material.dart';

Widget flexible(double h) => Flexible(
      fit: FlexFit.loose,
      child: Container(
        height: h,
      ),
    );

class MiddlePageContainer extends StatefulWidget {
  @override
  _MiddlePageContainerState createState() => _MiddlePageContainerState();
}

class _MiddlePageContainerState extends State<MiddlePageContainer> {
  String mainImgPic = "assets/applewatch.jpg";
  //String mainImgPic;

  Color c = Colors.black54;
  String path_to_sent_to_RowOfWatch = "assets/applewatch.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Text(
                  "Product Details",
                  style: TextStyle(
                    color: c,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LeftPart(
                mainImgPath: mainImgPic,
                changeBorderOfSmallImg: (String p) {
                  setState(() {
                    path_to_sent_to_RowOfWatch = p;
                    mainImgPic = p;
                  });
                },
              ),
              RightPart(),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.30,
            height: 20,
          ),
          RowOfWatch(
              imgToBeBordered: path_to_sent_to_RowOfWatch,
              changeMainImg: (String p) {
                setState(() {
                  mainImgPic = p;
                });
              }),
        ],
      ),
    );
  }
}
