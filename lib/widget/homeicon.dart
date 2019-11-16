import 'package:flutter/material.dart';

class HomeIconPage extends StatefulWidget {
  @override
  _HomeIconPageState createState() => _HomeIconPageState();
}

class _HomeIconPageState extends State<HomeIconPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 25),
              width: 100,
              height: 100,
              child: Text("hi"),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25),
              width: 100,
              height: 100,
              child: Text("hi"),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25),
              width: 100,
              height: 100,
              child: Text("hi"),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30),
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 25),
              width: 100,
              height: 100,
              child: Text("hi"),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25),
              width: 100,
              height: 100,
              child: Text("hi"),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25),
              width: 100,
              height: 100,
              child: Text("hi"),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
