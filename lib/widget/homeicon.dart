import 'package:flutter/material.dart';
import 'package:kp/utils/colors.dart';

class HomeIconPage extends StatefulWidget {
  @override
  _HomeIconPageState createState() => _HomeIconPageState();
}

class _HomeIconPageState extends State<HomeIconPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/universitaspage');
            },
            child: Container(
              margin: EdgeInsets.only(right: 25),
              width: 103,
              height: 103,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/university.png'),
                    width: 50.0,
                    height: 50.0,
                    color: Colors.white,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: TemaApp.yellowsColor,
                borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/jurusanpage');
            },
            child: Container(
              margin: EdgeInsets.only(right: 25),
              width: 103,
              height: 103,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/jurusan.png'),
                    width: 50.0,
                    height: 50.0,
                    color: Colors.white,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: TemaApp.yellowsColor,
                borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/beasiswapage');
            },
            child: Container(
              margin: EdgeInsets.only(right: 25),
              width: 103,
              height: 103,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/beasiswa.png'),
                    width: 50.0,
                    height: 50.0,
                    color: Colors.white,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: TemaApp.yellowsColor,
                borderRadius: new BorderRadius.all(const Radius.circular(20.0)),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
