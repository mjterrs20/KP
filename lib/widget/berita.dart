import 'package:flutter/material.dart';
import 'package:kp/pages/beritadetail.dart';

class BeritaWidget extends StatefulWidget {
  @override
  _BeritaWidgetState createState() => _BeritaWidgetState();
}

class _BeritaWidgetState extends State<BeritaWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      // physics: const AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: 10.0),
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BeritaDetailPage(
                        'https://edukasi.kompas.com/read/2019/11/16/16271351/perkuat-link-and-match-kawan-lama-gelar-workshop-dosen-nasional')));
          },
          child: Column(
            children: <Widget>[
              Container(
                width: 200.0,
                height: 120.0,
                margin: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/images/1.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BeritaDetailPage(
                        'https://edukasi.kompas.com/read/2019/11/15/11533411/terbaru-jadwal-resmi-snmptn-2020-resmi-diluncurkan-hari-ini?page=all')));
          },
          child: Column(
            children: <Widget>[
              Container(
                width: 200.0,
                height: 120.0,
                margin: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/images/2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BeritaDetailPage(
                        'https://edukasi.kompas.com/read/2019/11/16/09221331/lulusan-sma-dan-smk-bca-buka-magang-cs-dan-teller-dengan-beasiswa')));
          },
          child: Column(
            children: <Widget>[
              Container(
                width: 200.0,
                height: 120.0,
                margin: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/images/3.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BeritaDetailPage(
                        'https://edukasi.kompas.com/read/2019/11/15/14170461/wajib-tahu-ini-4-perubahan-penting-dalam-snmptn-dan-sbmp')));
          },
          child: Column(
            children: <Widget>[
              Container(
                width: 200.0,
                height: 120.0,
                margin: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  image: new DecorationImage(
                    image: new ExactAssetImage('assets/images/4.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
