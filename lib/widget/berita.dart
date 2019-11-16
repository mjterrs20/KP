import 'package:flutter/material.dart';

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
                  onTap: (){
                     Navigator.of(context).pushNamed('/kategori');
                  },
                  child: Column(
                  children: <Widget>[
                    Container(
                      width: 150.0,
                      height: 120.0,
                      margin: EdgeInsets.only(right: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/app.png'),
                            width: 25.0,
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   height: 33.0,
                    //   width: 33.0,
                    //   margin: EdgeInsets.only(top: 2.0),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: <Widget>[
                    //       Text("Semua",
                    //           style: new TextStyle(
                    //               color: Colors.black,
                    //               fontSize: 7.0,
                    //               fontFamily: 'Camfortaa',
                    //               fontWeight: FontWeight.bold)),
                    //       Text("Kategori",
                    //           style: new TextStyle(
                    //               color: Colors.black,
                    //               fontSize: 7.0,
                    //               fontFamily: 'Camfortaa',
                    //               fontWeight: FontWeight.bold))
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 150.0,
                      height: 120.0,
                      margin: EdgeInsets.only(right: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/bag.png'),
                            width: 25.0,
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      height: 120.0,
                      margin: EdgeInsets.only(right: 10.0, left: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/legal-paper.png'),
                            width: 25.0,
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      height: 120.0,
                      margin: EdgeInsets.only(right: 10.0, left: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/suitcase.png'),
                            width: 25.0,
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      height: 120.0,
                      margin: EdgeInsets.only(right: 10.0, left: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                                'assets/images/indonesian-rupiah.png'),
                            width: 25.0,
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      height: 120.0,
                      margin: EdgeInsets.only(right: 10.0, left: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image(
                            image: AssetImage('assets/images/editor.png'),
                            width: 25.0,
                            height: 25.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
  }
}