import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';

class JurusankuPage extends StatefulWidget {
  @override
  _JurusankuPageState createState() => _JurusankuPageState();
}

class _JurusankuPageState extends State<JurusankuPage> {
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
        title: Text("Jusuranku"),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}