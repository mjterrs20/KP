import 'package:flutter/material.dart';
import 'package:kp/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class ProfilTeamPage extends StatefulWidget {
  @override
  _ProfilTeamPageState createState() => _ProfilTeamPageState();
}

class _ProfilTeamPageState extends State<ProfilTeamPage> {
  void initState() {
    super.initState();
  }

  int index = 3;
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
        title: Text("Profil Team"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(child: Text("RIZKI, RAKA, ERSA"),),
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