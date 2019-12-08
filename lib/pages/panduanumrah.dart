import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PanduanUmrahPage extends StatefulWidget {
  @override
  _PanduanUmrahPageState createState() => _PanduanUmrahPageState();
}

class _PanduanUmrahPageState extends State<PanduanUmrahPage> {
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
        title: Text("Panduan Haji"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:Center(child: Text("hi"),),
    );
  }
}