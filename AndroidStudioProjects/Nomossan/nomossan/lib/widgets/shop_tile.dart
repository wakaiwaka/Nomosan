import 'package:flutter/material.dart';
import 'package:nomossan/models/shop.dart';

class ShopTile extends StatelessWidget {
  Shop shop;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              shop.name,
              style: TextStyle(),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                      child: Icon(Icons.directions_walk),
                      padding: EdgeInsets.all(5.0)),
                  Text(shop.distance.toString())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
