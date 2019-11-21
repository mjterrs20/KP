import 'package:flutter/material.dart';

import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:kp/utils/colors.dart';

class BeritaDetailPage extends StatefulWidget {
  BeritaDetailPage(this.articleID);
  final articleID;
  @override
  _BeritaDetailPageState createState() => _BeritaDetailPageState();
}

class _BeritaDetailPageState extends State<BeritaDetailPage> {
   void initState() {
    super.initState();
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
                title: Text("Berita Terkini"),
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
