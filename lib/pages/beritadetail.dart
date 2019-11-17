import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
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
    return Scaffold(
    );
  }
}
