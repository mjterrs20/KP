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
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BeritaDetailPage(
                        'https://www.liputan6.com/news/read/4088548/indeks-bps-memuaskan-menag-penyelenggaraan-haji-tahun-ini-sangat-menantang')));
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
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BeritaDetailPage(
                        'https://news.detik.com/berita/d-4812167/menhub-menag-sepakat-jemaah-haji-2020-berangkat-dari-bandara-kertajati')));
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
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BeritaDetailPage(
                        'https://haji.okezone.com/read/2019/11/28/398/2135628/menag-usul-ke-dpr-biaya-haji-2020-rp35-juta')));
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
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BeritaDetailPage(
                        'https://news.detik.com/berita-jawa-timur/d-4707276/ribuan-obat-dan-jamu-sitaan-jemaah-haji-dimusnahkan?_ga=2.99328925.2049869072.1575787549-483235231.1556072754')));
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
