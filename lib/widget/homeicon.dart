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
              Navigator.of(context).pushNamed('/panduanhaji');
            },
            child: Container(
              margin: EdgeInsets.only(right: 25),
              width: 103,
              height: 103,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 70.0,
                    height: 70.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/haji.png'),
                          width: 40.0,
                          height: 40.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: TemaApp.greenColor,
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(20.0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Panduan Haji",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Camfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/panduanumrah');
            },
            child: Container(
              margin: EdgeInsets.only(right: 25),
              width: 103,
              height: 103,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 70.0,
                    height: 70.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/umrah1.png'),
                          width: 40.0,
                          height: 40.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: TemaApp.greenColor,
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(20.0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Panduan Umrah",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Camfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/panduanbudaya');
            },
            child: Container(
              margin: EdgeInsets.only(right: 25),
              width: 103,
              height: 103,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 70.0,
                    height: 70.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/culture.png'),
                          width: 40.0,
                          height: 40.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: TemaApp.greenColor,
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(20.0)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Panduan Budaya",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Camfortaa',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
