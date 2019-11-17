import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';

class UniversitasDetailPage extends StatefulWidget {
  UniversitasDetailPage(this.articleID);
  final articleID;
  @override
  _UniversitasDetailPageState createState() => _UniversitasDetailPageState();
}

class _UniversitasDetailPageState extends State<UniversitasDetailPage> {
   void initState() {
    super.initState();
    // Firestore load
  }
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
        title: Text("Detail Universitas"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('universitas').document(widget.articleID).snapshots(),
        builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return  Center(
                    child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xFFB60000))));
        }
        var contentDocument = snapshot.data;
        return GestureDetector(
          child: ListView( 
            padding: EdgeInsets.fromLTRB(20.00, 15.00 ,20.00, 0.00),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0.00, 0.00 ,0.00, 20.0),
                child: Text(contentDocument['Universitas'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, fontFamily: 'Comfortaa', color:Color(0xff747474)),),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.00, 0.00 ,0.00, 5.00),
                child: Image.network(contentDocument['Foto'],),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.00, 5.00 ,0.00, 5.00),
                child: Text("Akreditasi: "+contentDocument['Akreditasi']+"  Status: "+contentDocument['Status'],textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,fontFamily: 'Comfortaa',color:Color(0xff747474)),),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.00, 5.00 ,0.00, 5.00),
                child: Text(contentDocument['Website'],textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,fontFamily: 'Comfortaa',color:Color(0xff747474)),),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.00, 10.00 ,0.00, 10.00),
                child: Text(contentDocument['Deskripsi'],textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,fontFamily: 'Comfortaa',color:Color(0xff747474)),),
              ),
            ],
          ),
        );
      }
      ),
    );
  }
}