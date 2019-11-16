import 'package:flutter/material.dart';
import 'package:kp/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class TipsPage extends StatefulWidget {
  @override
  _TipsPageState createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  void initState() {
    super.initState();
  }

  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient: LinearGradient(
          colors: [
            TemaApp.greenColor,
            TemaApp.yellowsColor,
          ],
          tileMode: TileMode.clamp,
        ),
        title: Text("Tips"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return new Stack(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: new Card(
                    margin: new EdgeInsets.all(20.0),
                    child: new Container(
                      width: double.infinity,
                      height: 200.0,
                      color: Colors.green,
                    ),
                  ),
                ),
                new Positioned(
                  top: 0.0,
                  bottom: 0.0,
                  left: 35.0,
                  child: new Container(
                    height: double.infinity,
                    width: 1.0,
                    color: Colors.blue,
                  ),
                ),
                new Positioned(
                  top: 100.0,
                  left: 15.0,
                  child: new Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: new Container(
                      margin: new EdgeInsets.all(5.0),
                      height: 30.0,
                      width: 30.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ),
                )
              ],
            );
          },
          itemCount: 5,
        ),
      ),
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
