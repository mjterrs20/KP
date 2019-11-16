import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';

class JurusanPage extends StatefulWidget {
  @override
  _JurusanPageState createState() => _JurusanPageState();
}

class _JurusanPageState extends State<JurusanPage> {
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
        title: Text("Jurusan"),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}