import 'package:flutter/material.dart';

Widget addCart = RaisedButton(
  onPressed: (){
  },
  color: Colors.blue[300], // this color will act if button is enabled=true
  textColor: Colors.white,
  elevation: 0.0,
  hoverColor: Colors.pink[300],
  hoverElevation: 0.0,
  padding: EdgeInsets.all(10.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Text(
    'Add to Cart',
    style: TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 16,
      
    ),
  ),
);

class AddItemesButton extends StatefulWidget {
  @override
  _AddItemesButtonState createState() => _AddItemesButtonState();
}

class _AddItemesButtonState extends State<AddItemesButton> {

  var no_of_items = 1;

  @override
  Widget build(BuildContext context) {

    void  _addItem(){
      setState(() {
        ++no_of_items;
      });
    }
    void _removeItems(){
      setState(() {
        --no_of_items;
      });
    }

    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        color: Colors.white38,
        width: 110,
        height: 40,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: _removeItems,
              icon: Icon(Icons.remove),
              iconSize: 12,
            ),
            Container(
              width: 13,
              child: Text(
                (no_of_items).toString(),
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            IconButton(
              onPressed: _addItem,
              icon: Icon(Icons.add),
              iconSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}