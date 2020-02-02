import 'package:flutter/material.dart';
import 'package:nike/nav/navbar.dart';

class ShopNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          NavigationText(title: "Show Now", qt: -1),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
    );
  }
}
