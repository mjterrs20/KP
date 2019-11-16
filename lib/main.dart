import 'package:flutter/material.dart';
import 'package:kp/pages/testing.dart';
import 'package:kp/pages/coba.dart';
import 'package:kp/pages/second.dart';
import 'package:kp/pages/splashscreen.dart';
import 'package:kp/pages/home.dart';
import 'package:kp/pages/beasiswa.dart';
import 'package:kp/pages/berita.dart';
import 'package:kp/pages/bimbel.dart';
import 'package:kp/pages/jurusan.dart';
import 'package:kp/pages/private.dart';
import 'package:kp/pages/universitas.dart';
import 'package:kp/pages/chatbot.dart';
import 'package:kp/pages/tips.dart';
import 'package:kp/pages/profilteam.dart';
import 'package:kp/pages/akun.dart';

void main() {
  return runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Pabanang',
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/homepage': (BuildContext context) => HomePage(),
        '/beasiswapage': (BuildContext context) => BeasiswaPage(),
        '/beritapage': (BuildContext context) => BeritaPage(),
        '/bimbelpage': (BuildContext context) => BimbelPage(),
        '/jurusanpage': (BuildContext context) => JurusanPage(),
        '/privatepage': (BuildContext context) => PrivatePage(),
        '/universitaspage': (BuildContext context) => UniversitasPage(),
        '/chatbotpage': (BuildContext context) => ChatbotPage(),
        '/tipspage': (BuildContext context) => TipsPage(),
        '/profilpage': (BuildContext context) => ProfilTeamPage(),
        '/akunpage': (BuildContext context) => AkunPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.green[600],
        primaryColorLight: Colors.amber[400],
        primaryIconTheme:
            Theme.of(context).primaryIconTheme.copyWith(color: Colors.white),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class Testing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing',
      home:  TestingPage(),
    );
  }
}
class Coba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'testing',
      home:  CobaPage(),
      routes: <String, WidgetBuilder>{
        '/secondpage': (BuildContext context) => SecondPage(),
      },
    );
  }
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Example Dialogflow Flutter',
//       theme: new ThemeData(
//         primarySwatch: Colors.deepOrange,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: new HomePageDialogflow(),
//     );
//   }
// }

// class HomePageDialogflow extends StatefulWidget {
//   HomePageDialogflow({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _HomePageDialogflow createState() => new _HomePageDialogflow();
// }

// class _HomePageDialogflow extends State<HomePageDialogflow> {
//   final List<ChatMessage> _messages = <ChatMessage>[];
//   final TextEditingController _textController = new TextEditingController();

//   Widget _buildTextComposer() {
//     return new IconTheme(
//       data: new IconThemeData(color: Theme.of(context).accentColor),
//       child: new Container(
//         margin: const EdgeInsets.symmetric(horizontal: 8.0),
//         child: new Row(
//           children: <Widget>[
//             new Flexible(
//               child: new TextField(
//                 controller: _textController,
//                 onSubmitted: _handleSubmitted,
//                 decoration:
//                     new InputDecoration.collapsed(hintText: "Send a message"),
//               ),
//             ),
//             new Container(
//               margin: new EdgeInsets.symmetric(horizontal: 4.0),
//               child: new IconButton(
//                   icon: new Icon(Icons.send),
//                   onPressed: () => _handleSubmitted(_textController.text)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void Response(query) async {
//     _textController.clear();
//     AuthGoogle authGoogle =
//         await AuthGoogle(fileJson: "assets/key/kp-likvcc-55d8760cde3e.json")
//             .build();
//     Dialogflow dialogflow =
//         Dialogflow(authGoogle: authGoogle, language: Language.english);
//     AIResponse response = await dialogflow.detectIntent(query);
//     ChatMessage message = new ChatMessage(
//       text: response.getMessage() ??
//           new CardDialogflow(response.getListMessage()[0]).title,
//       name: "Bot",
//       type: false,
//     );
//     setState(() {
//       _messages.insert(0, message);
//     });
//   }

//   void _handleSubmitted(String text) {
//     _textController.clear();
//     ChatMessage message = new ChatMessage(
//       text: text,
//       name: "Promise",
//       type: true,
//     );
//     setState(() {
//       _messages.insert(0, message);
//     });
//     Response(text);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         centerTitle: true,
//         title: new Text("Flutter and Dialogflow"),
//       ),
//       body: new Column(children: <Widget>[
//         new Flexible(
//             child: new ListView.builder(
//           padding: new EdgeInsets.all(8.0),
//           reverse: true,
//           itemBuilder: (_, int index) => _messages[index],
//           itemCount: _messages.length,
//         )),
//         new Divider(height: 1.0),
//         new Container(
//           decoration: new BoxDecoration(color: Theme.of(context).cardColor),
//           child: _buildTextComposer(),
//         ),
//       ]),
//     );
//   }
// }

// class ChatMessage extends StatelessWidget {
//   ChatMessage({this.text, this.name, this.type});

//   final String text;
//   final String name;
//   final bool type;

//   List<Widget> otherMessage(context) {
//     return <Widget>[
//       new Container(
//         margin: const EdgeInsets.only(right: 16.0),
//         child: new CircleAvatar(child: new Text('B')),
//       ),
//       new Expanded(
//         child: new Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             new Text(this.name,
//                 style: new TextStyle(fontWeight: FontWeight.bold)),
//             new Container(
//               margin: const EdgeInsets.only(top: 5.0),
//               child: new Text(text),
//             ),
//           ],
//         ),
//       ),
//     ];
//   }

//   List<Widget> myMessage(context) {
//     return <Widget>[
//       new Expanded(
//         child: new Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: <Widget>[
//             new Text(this.name, style: Theme.of(context).textTheme.subhead),
//             new Container(
//               margin: const EdgeInsets.only(top: 5.0),
//               child: new Text(text),
//             ),
//           ],
//         ),
//       ),
//       new Container(
//         margin: const EdgeInsets.only(left: 16.0),
//         child: new CircleAvatar(
//             child: new Text(
//           this.name[0],
//           style: new TextStyle(fontWeight: FontWeight.bold),
//         )),
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       margin: const EdgeInsets.symmetric(vertical: 10.0),
//       child: new Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: this.type ? myMessage(context) : otherMessage(context),
//       ),
//     );
//   }
// }