import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kp/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.of(context).pushReplacementNamed('/homepage'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: TemaApp.greenColor),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/kabah.png",
                      color: Colors.white70,
                      width: 80.0,
                      height: 100.0,
                      fit: BoxFit.cover,),
                      Padding(padding: EdgeInsets.only(top: 30),),
                      Text("Program KP",
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: 'Camfortaa',
                              fontWeight: FontWeight.normal))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "© MelekTechnology",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                      Text(
                        "Ver. 1.0.0+1 Beta",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8.0,
                        ),
                      ),
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
