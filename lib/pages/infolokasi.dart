import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kp/pages/infolokasi_detail.dart';

class InfoLokasiPage extends StatefulWidget {
  @override
  _InfoLokasiPageState createState() => _InfoLokasiPageState();
}

class _InfoLokasiPageState extends State<InfoLokasiPage> {
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
        title: Text("Info Lokasi"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('lokasis').snapshots(),
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

  Widget _buildListItem(BuildContext context, DocumentSnapshot document){
    return GestureDetector(
      onTap: () { 
        Navigator.push(
        context,
        MaterialPageRoute(builder:(BuildContext context) => 
        InfoLokasiDetailPage(document.documentID)));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: Image.network(document['foto'],width: 50,height: 50,),
            contentPadding: EdgeInsets.fromLTRB(24.00, 0.00 ,10.00, 0.00),
            title: Text(document['judul'] != null ? document['judul']: '',
							style: TextStyle(
								color:Color(0xffc4c4c4), 
								fontSize: 14.0,
								fontWeight: FontWeight.bold,
								fontFamily: 'Comfortaa',
							),
            ),
          ),
          Divider(color: Colors.grey[1000], indent:0.0,),
        ],
      ),
    );
  }
}
