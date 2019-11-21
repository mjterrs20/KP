import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:kp/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class DiskonPage extends StatefulWidget {
  DiskonPage(this.url);
  final url;
  @override
  _DiskonPageState createState() => _DiskonPageState();
}

class _DiskonPageState extends State<DiskonPage> {
  void initState() {
    super.initState();
    print(widget.url);
    // Firestore load
  }

  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: widget.url,
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
