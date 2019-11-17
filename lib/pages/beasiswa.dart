import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:kp/models/models_mahasiswa.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kp/pages/beasiswadetail.dart';

class BeasiswaPage extends StatefulWidget {
  @override
  _BeasiswaPageState createState() => _BeasiswaPageState();
}

class _BeasiswaPageState extends State<BeasiswaPage> {
  
  void initState() {
    super.initState();
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
        title: Text("Beasiswa"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('beasiswas').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData)
            return Center(
                child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xFFB60000))));
          return new ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index) =>
                _buildListItem(context, snapshot.data.documents[index]),
          );
        },
      ),
    );
  }
  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    BeasiswaDetailPage(document['link'])));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(40.0),
                )),
            margin: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(document['foto']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                    height: 100,
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.fromLTRB(24.00, 0.00, 10.00, 0.00),
                      title: Text(
                        document['judul'],
                        style: TextStyle(
                          color: Color(0xffc4c4c4),
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                      subtitle: Text(
                        document['content'],
                        style: TextStyle(
                          color: Color(0xff747474),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[1000],
            indent: 0.0,
          ),
        ],
      ),
    );
  }
}
