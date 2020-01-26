
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

class MiddlePageContainer extends StatelessWidget {
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
                    color: Colors.black54,
                    fontSize: 30,
                    //fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              LeftPart( "assets/applewatch.jpg" ),
           RightPart(),
            ],
          ),
          SizedBox(
            width:  MediaQuery.of(context).size.width * 0.30,
            height: 20,

          ),
          RowOfWatch(),
        ],
      ),
    );
  }
}

