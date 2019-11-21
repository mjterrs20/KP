import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';

class JurusanDetailPage extends StatefulWidget {
  JurusanDetailPage(this.articleID);
  final articleID;
  @override
  _JurusanDetailPageState createState() => _JurusanDetailPageState();
}

class _JurusanDetailPageState extends State<JurusanDetailPage> {
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
        title: Text("Detail Jurusan"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('jurusans').document(widget.articleID).snapshots(),
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
                padding: EdgeInsets.fromLTRB(0.00, 0.00 ,0.00, 10.0),
                child: Text(contentDocument['nama'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0, fontFamily: 'Comfortaa', color:Color(0xff747474)),),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.00, 1.00 ,0.00, 5.00),
                child: Text("Peluang Kerja: ",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,fontFamily: 'Comfortaa',color:Color(0xff747474)),),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.00, 1.00 ,0.00, 5.00),
                child: Text(contentDocument['peluangkerja'],textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,fontFamily: 'Comfortaa',color:Color(0xff747474)),),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.00, 5.00 ,0.00, 5.00),
                child: Text(contentDocument['penjelasan'],textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,fontFamily: 'Comfortaa',color:Color(0xff747474)),),
              ),
            ],
          ),
        );
      }
      ),
    );
  }
}