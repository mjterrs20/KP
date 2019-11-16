import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TestingPage extends StatefulWidget {
  @override
  _TestingPageState createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  String nama = '';
  void initState() {
    super.initState();
    // Firestore load
    getTotalRegu();
    print("hi");
  }
  Future<DocumentSnapshot> getTotalRegu() async {
    QuerySnapshot result =
        await Firestore.instance.collection("users").getDocuments();
    var documents = result.documents;
    if (documents.isNotEmpty) {
      for (var doc in documents) {
        setState(() {
          nama = doc['nama'].toString();
          print("ini"+nama);
        });
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing"),
      ),
        body: Container(
      child: Center(
        child: Text(nama),
      ),
    ));
  }
}
