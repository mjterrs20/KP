import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';

class BimbelPage extends StatefulWidget {
  @override
  _BimbelPageState createState() => _BimbelPageState();
}

class _BimbelPageState extends State<BimbelPage> {
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
        title: Text("Bimbel"),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}