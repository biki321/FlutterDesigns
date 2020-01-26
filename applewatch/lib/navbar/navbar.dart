import 'package:flutter/material.dart';

Widget sizedbox({double s = 15}) => SizedBox(
      width: s,
    );

Widget navbar_text_item(String title) => Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        //fontWeight: FontWeight.w100,
      ),
    );

Widget row1 = Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    navbar_text_item("Home"),
    sizedbox(),
    navbar_text_item("Products"),
    sizedbox(),
    navbar_text_item("About us"),
    sizedbox(),
    navbar_text_item("Shop"),
    sizedbox(),
    navbar_text_item("Contact"),
    sizedbox(),
  ],
);

Widget row2 = Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    navbar_text_item("Favorite"),
    sizedbox(),
    navbar_text_item("Cart"),
    sizedbox(),
    navbar_text_item("Log in"),
  ],
);

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              "assets/apple-logo.png",
              fit: BoxFit.cover,
            
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              width: 400,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              row1,
              SizedBox(
                width: 200,
              ),
              row2,
            ],
          ),
        ],
      ),
    );
  }
}
