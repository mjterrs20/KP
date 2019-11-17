import 'package:flutter/material.dart';
import 'package:kp/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class AkunPage extends StatefulWidget {
  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  void initState() {
    super.initState();
  }

  int index = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            height: 340.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  TemaApp.greenColor,
                  TemaApp.yellowsColor,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.5, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[500],
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    'assets/images/user.png',
                    width: 120,
                    height: 120,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/akunedit');
                  },
                  child: Container(
                    width: 40,
                    height: 18,
                    margin: EdgeInsets.only(top: 8.0, bottom: 5.0),
                    child: Center(
                      child: Text(
                        "Ganti",
                        style: TextStyle(
                          fontSize: 10.0,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom: 2.0),
                  child: Text(
                    "ID_1000",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.0, bottom: 5.0),
                  child: Text(
                    "Pabanang",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Comfortaa',
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Pabanang@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w200,
                      fontFamily: 'Comfortaa',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int index) {
          // setState(() {
          //   this.index = index;
          // });
          if (index == 1) {
            Navigator.of(context).pushReplacementNamed('/tipspage');
          } else if (index == 2) {
            Navigator.of(context).pushReplacementNamed('/chatbotpage');
          } else if (index == 3) {
            Navigator.of(context).pushReplacementNamed('/profilpage');
          } else if (index == 4) {
            Navigator.of(context).pushReplacementNamed('/akunpage');
          } else if (index == 0) {
            Navigator.of(context).pushReplacementNamed('/homepage');
          }
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("home",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontFamily: 'Camfortaa'))),
          BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              title: Text("Tips & Tricks",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: 'Camfortaa'))),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text("Chat",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontFamily: 'Camfortaa'))),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text("Team",
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: 'Camfortaa')),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Akun",
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: 'Camfortaa')),
          ),
        ],
      ),
    );
  }
}
