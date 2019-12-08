import 'package:flutter/material.dart';
import 'package:kp/pages/coba.dart';
import 'package:kp/pages/second.dart';
import 'package:kp/pages/splashscreen.dart';
import 'package:kp/pages/home.dart';
import 'package:kp/pages/beasiswa.dart';
import 'package:kp/pages/berita.dart';
import 'package:kp/pages/bimbel.dart';
import 'package:kp/pages/jurusan.dart';
import 'package:kp/pages/private.dart';
import 'package:kp/pages/universitas.dart';
import 'package:kp/pages/chatbot.dart';
import 'package:kp/pages/tips.dart';
import 'package:kp/pages/profilteam.dart';
import 'package:kp/pages/akun.dart';
import 'package:kp/pages/login.dart';
import 'package:kp/pages/jurusanku.dart';
import 'package:kp/pages/resgister.dart';
import 'package:kp/pages/panduanhaji.dart';
import 'package:kp/pages/panduanumrah.dart';
import 'package:kp/pages/infolokasi.dart';

void main() {
  return runApp( MyApp ());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'KP',
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => HomePage(),
        '/beasiswapage': (BuildContext context) => BeasiswaPage(),
        '/beritapage': (BuildContext context) => BeritaPage(),
        '/bimbelpage': (BuildContext context) => BimbelPage(),
        '/jurusanpage': (BuildContext context) => JurusanPage(),
        '/privatepage': (BuildContext context) => PrivatePage(),
        '/universitaspage': (BuildContext context) => UniversitasPage(),
        '/chatbotpage': (BuildContext context) => ChatbotPage(),
        '/tipspage': (BuildContext context) => TipsPage(),
        '/profilpage': (BuildContext context) => ProfilTeamPage(),
        '/akunpage': (BuildContext context) => AkunPage(),
        '/loginpage': (BuildContext context) => LoginPage(),
        '/jurusankupage': (BuildContext context) => JurusankuPage(),
        '/panduanhaji': (BuildContext context) => PanduanHajiPage(),
        '/panduanumrah': (BuildContext context) => PanduanUmrahPage(),
        '/infolokasi': (BuildContext context) => InfoLokasiPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.green[600],
        primaryColorLight: Colors.amber[400],
        primaryIconTheme:
            Theme.of(context).primaryIconTheme.copyWith(color: Colors.white),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing',
      home:  LoginPage(),
    );
  }
}
class Coba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing',
      home:  CobaPage(),
      routes: <String, WidgetBuilder>{
        '/secondpage': (BuildContext context) => SecondPage(),
      },
    );
  }
}
class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing',
      home:  RegisterPage(),
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => HomePage(),
      },
    );
  }
}
