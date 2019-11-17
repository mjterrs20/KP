import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class BeasiswaDetailPage extends StatefulWidget {
  BeasiswaDetailPage(this.articleID);
  final articleID;
  @override
  _BeasiswaDetailPageState createState() => _BeasiswaDetailPageState();
}

class _BeasiswaDetailPageState extends State<BeasiswaDetailPage> {
   void initState() {
    super.initState();
    print(widget.articleID);
    // Firestore load
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: widget.articleID,
              appBar: GradientAppBar(
                gradient: LinearGradient(
                  colors: [
                    TemaApp.greenColor,
                    TemaApp.yellowsColor,
                  ],
                  tileMode: TileMode.clamp,
                ),
                centerTitle: true,
                elevation: 0.0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                ),
              ),
            ),
      },
    );
  }
}