import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:kp/widget/homeicon.dart';
import 'package:kp/widget/berita.dart';
import 'package:kp/widget/advetorial.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  List imgList = [
    'assets/images/carousel1.jpg',
    'assets/images/carousel2.jpg',
    'assets/images/carousel3.jpg'
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(),
        backgroundColor: Colors.green[600],
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                top: 0.0,
                child: ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100.0,
                    color: Colors.green[600],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: CarouselSlider(
                  height: 130,
                  initialPage: 0,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  autoPlay: true, // buat gerak sendiri
                  reverse: false, // buat membalikan
                  enableInfiniteScroll: true, // jadi muter terus
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 2000),
                  pauseAutoPlayOnTouch: Duration(seconds: 10),
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: imgList.map((imgAssets) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(imgAssets),
                              fit: BoxFit.fill,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 50.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? Colors.green : Colors.grey,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
            child: HomeIconPage(),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
            child: Text("Berita Terkini"),
          ),
          Container(
            height: 200.0,
            margin: EdgeInsets.only(
              top: 15.0,
              bottom: 5.0,
            ),
            child: BeritaWidget(),
          ),
          AdvetorialWidget(),
          
          // batas menulis di column
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_library),
              title: Text("Feed",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontFamily: 'Camfortaa'))),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_turned_in),
              title: Text("Official Store",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: 'Camfortaa'))),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Keranjang",
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: 'Camfortaa')),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Akun",
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: 'Camfortaa')),
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);

    var firstEndPoint = Offset(size.width * .5, size.height - 35.0);
    var firstControlpoint = Offset(size.width * 0.25, size.height - 60.0);
    path.quadraticBezierTo(firstControlpoint.dx, firstControlpoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 50.0);
    var secondControlpoint = Offset(size.width * .75, size.height - 10.0);
    path.quadraticBezierTo(secondControlpoint.dx, secondControlpoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    // path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
