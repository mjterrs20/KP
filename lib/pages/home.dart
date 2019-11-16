import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:kp/widget/homeicon.dart';
import 'package:kp/widget/berita.dart';
import 'package:kp/widget/advetorial.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';
import 'package:kp/pages/diskon.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  int index = 0;
  String url = '';
  void initState() {
    super.initState();
    index = 0;
  }
  List imgList = [
    'assets/images/ruangguru.jpeg',
    'assets/images/quiper.jpeg',
    'assets/images/zenius.jpeg'
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
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          TemaApp.greenColor,
                          TemaApp.yellowsColor,
                        ],
                      ),
                    ),
                    // color: Colors.green[600],
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
                        return GestureDetector(
                          onTap: () {
                            print(imgAssets);
                            if (imgAssets == 'assets/images/ruangguru.jpeg') {
                              url = 'http://bimbel.ruangguru.com/promo';
                            }
                            if (imgAssets == 'assets/images/quiper.jpeg') {
                              url = 'https://www.quipper.com/id/';
                            }
                            if (imgAssets == 'assets/images/zenius.jpeg') {
                              url = 'https://www.zenius.net/';
                            }
                            // buat image assets
                            print("woy" + url);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DiskonPage(url)));
                          },
                          child: Container(
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
            height: 150.0,
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
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int index) {
          // setState(() {
          //   this.index = index;
          //   print(index);
          // });
          if(index == 1){
            Navigator.of(context).pushReplacementNamed('/tipspage');
          }
          else if(index == 2){
            Navigator.of(context).pushReplacementNamed('/chatbotpage');
          }else if(index == 3){
            Navigator.of(context).pushReplacementNamed('/profilpage');
          }
          else if(index == 4){
            Navigator.of(context).pushReplacementNamed('/akunpage');
          }else if(index == 0){
            Navigator.of(context).pushReplacementNamed('/homepage');
          }
          
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("home",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontFamily: 'Camfortaa'))),
          BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              title: Text("Tips & Tricks",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: 'Camfortaa'))),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text("Chat",
                  style: new TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontFamily: 'Camfortaa'))),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text("Team",
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
