import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';

class CobaPage extends StatefulWidget {
  @override
  _CobaPageState createState() => _CobaPageState();
}

class _CobaPageState extends State<CobaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coba"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/secondpage');
              },
              child: Container(
                child: Center(
                  child: Text("raka"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
