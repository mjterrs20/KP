import 'package:flutter/material.dart';
import 'package:kp/pages/diskon.dart';

class AdvetorialWidget extends StatefulWidget {
  @override
  _AdvetorialWidgetState createState() => _AdvetorialWidgetState();
}

class _AdvetorialWidgetState extends State<AdvetorialWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        // Container(
        //     padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        //     width: screenSize.width,
        //     child: Column(
        //       children: <Widget>[
        //         Container(
        //           width: screenSize.width,
        //           decoration: BoxDecoration(
        //               color: Colors.black87,
        //               borderRadius: BorderRadius.all(Radius.circular(10.0)),
        //               image: DecorationImage(
        //                   fit: BoxFit.cover,
        //                   colorFilter: ColorFilter.mode(
        //                       Colors.black54, BlendMode.multiply),
        //                   image: AssetImage(
        //                     'assets/images/conseling.jpg',
        //                   ))),
        //           child: Padding(
        //             padding: EdgeInsets.all(15.0),
        //             child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.start,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: <Widget>[
        //                   Row(
        //                     children: <Widget>[
        //                       Text('RINDU ',
        //                           style: TextStyle(
        //                               color: TemaApp.whiteColor,
        //                               fontSize: 23.3,
        //                               fontFamily: 'Comfortaa',
        //                               fontWeight: FontWeight.w900)),
        //                       Text('MASAKAN ',
        //                           style: TextStyle(
        //                               color: TemaApp.redColor,
        //                               fontSize: 23.3,
        //                               fontFamily: 'Comfortaa',
        //                               fontWeight: FontWeight.w900)),
        //                     ],
        //                   ),
        //                   Row(
        //                     children: <Widget>[
        //                       Text('INDONESIA ',
        //                           style: TextStyle(
        //                               color: TemaApp.redColor,
        //                               fontSize: 23.3,
        //                               fontFamily: 'Comfortaa',
        //                               fontWeight: FontWeight.w900)),
        //                       Text('DI ',
        //                           style: TextStyle(
        //                               color: TemaApp.whiteColor,
        //                               fontSize: 23.3,
        //                               fontFamily: 'Comfortaa',
        //                               fontWeight: FontWeight.w900)),
        //                       Text('TANAH ',
        //                           style: TextStyle(
        //                               color: TemaApp.redColor,
        //                               fontFamily: 'Comfortaa',
        //                               fontSize: 23.3,
        //                               fontWeight: FontWeight.w900)),
        //                     ],
        //                   ),
        //                   Row(
        //                     children: <Widget>[
        //                       Text('SUCI ',
        //                           style: TextStyle(
        //                               color: TemaApp.redColor,
        //                               fontSize: 23.3,
        //                               fontFamily: 'Comfortaa',
        //                               fontWeight: FontWeight.w900)),
        //                       Text('? ',
        //                           style: TextStyle(
        //                               color: TemaApp.whiteColor,
        //                               fontFamily: 'Comfortaa',
        //                               fontSize: 23.3,
        //                               fontWeight: FontWeight.w900)),
        //                     ],
        //                   ),
        //                   Text('Artikel tips perjalanan haji.',
        //                       style: TextStyle(
        //                         color: Colors.grey,
        //                         fontFamily: 'Comfortaa',
        //                       ))
        //                 ]),
        //           ),
        //         ),
        //         Container(
        //           width: screenSize.width,
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.all(Radius.circular(10.0)),
        //           ),
        //           child: Container(
        //             width: screenSize.width,
        //             padding: EdgeInsets.all(15.0),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: <Widget>[
        //                 Text(
        //                   'GraPARI',
        //                   style: TextStyle(
        //                     fontFamily: 'Comfortaa',
        //                       fontSize: 18.0, fontWeight: FontWeight.bold),
        //                 ),
        //                 Text(
        //                   'adalah salah satu restoran yang menyediakan makanan khas indonesia',
        //                   style: TextStyle( fontFamily: 'Comfortaa',),
        //                 ),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.end,
        //                   crossAxisAlignment: CrossAxisAlignment.end,
        //                   children: <Widget>[
        //                     GestureDetector(
        //                       onTap: () {
        //                         Navigator.pushNamed(context, '/iklangrapari');
        //                       },
        //                       child: Container(
        //                         margin: EdgeInsets.only(top: 10),
        //                         padding: EdgeInsets.all(10),
        //                         decoration: const BoxDecoration(
        //                           borderRadius: BorderRadius.only(
        //                             bottomLeft: Radius.circular(8),
        //                             bottomRight: Radius.circular(8),
        //                             topLeft: Radius.circular(8),
        //                             topRight: Radius.circular(8),
        //                           ),
        //                           gradient: LinearGradient(
        //                             colors: <Color>[
        //                               Color(0xFFB60000),
        //                               Color(0xFFFF5126),
        //                             ],
        //                           ),
        //                         ),
        //                         child: Text(
        //                           "Selengkapnya...",
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.bold,
        //                               fontFamily: 'Comfortaa',
        //                               color: Colors.white),
        //                         ),
        //                       ),
        //                     )
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ),
        //         )
        //       ],
        //     )),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 130,
                width: screenSize.width,
                decoration: BoxDecoration(
                    // color: Colors.black87,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        // colorFilter:
                        //     ColorFilter.mode(Colors.black87, BlendMode.darken),
                        image: AssetImage('assets/images/umrahfair.jpg'))),
              ),
              Container(
                width: screenSize.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Umrah Fair',
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Datang dan Ramaikan Telkomsel Umrah Fair Roadshow Kota Kasablanka..',
                        style: TextStyle(fontFamily: 'Comfortaa'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          DiskonPage('https://www.telkomsel.com/umrahfair')));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFF60B683),
                                    Color(0xFFB7EB21),
                                  ],
                                ),
                              ),
                              child: Text(
                                "Check Event..",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Comfortaa',
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
