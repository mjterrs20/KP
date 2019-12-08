import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PanduanHajiPage extends StatefulWidget {
  @override
  _PanduanHajiPageState createState() => _PanduanHajiPageState();
}

class _PanduanHajiPageState extends State<PanduanHajiPage> {
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