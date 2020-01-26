import 'package:flutter/material.dart';

Widget sizedbox({double s = 15}) => SizedBox(
      width: s,
    );

class NavBarTextItem extends StatefulWidget {
  String title;
  NavBarTextItem(this.title, {Key key}) : super(key: key);

  @override
  _NavBarTextItemState createState() => _NavBarTextItemState(title);
}

class _NavBarTextItemState extends State<NavBarTextItem> {
  //double change_fontSize = 16;
  //FontWeight change_fontWeight = FontWeight.normal;
  Color fontColor = Colors.black;
  String title;
  _NavBarTextItemState(this.title);

  void _onEnter(PointerEvent details) {
    setState(() {
      fontColor = Colors.blue;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
     fontColor = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: Text(
        title,
        style: TextStyle(
          color: fontColor,
          //fontSize: change_fontSize,
          fontSize: 16,
            
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

Widget row1 = Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    NavBarTextItem("Home"),
    sizedbox(),
    NavBarTextItem("Products"),
    sizedbox(),
    NavBarTextItem("About us"),
    sizedbox(),
    NavBarTextItem("Shop"),
    sizedbox(),
    NavBarTextItem("Contact"),
    sizedbox(),
  ],
);

Widget row2 = Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    NavBarTextItem("Favorite"),
    sizedbox(),
    NavBarTextItem("Cart"),
    sizedbox(),
    NavBarTextItem("Log in"),
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
