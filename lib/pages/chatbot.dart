import 'package:flutter/material.dart';
import 'package:kp/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';

class ChatbotPage extends StatefulWidget {
  ChatbotPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChatbotPage createState() => new _ChatbotPage();
}

class _ChatbotPage extends State<ChatbotPage> {
  void initState() {
    super.initState();
  }

  int index = 2;
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: "Tanyakan Pada Pabanang"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void Response(query) async {
    _textController.clear();
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/key/kp-likvcc-55d8760cde3e.json")
            .build();
    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse response = await dialogflow.detectIntent(query);
    ChatMessage message = ChatMessage(
      text: response.getMessage() ??
          CardDialogflow(response.getListMessage()[0]).title,
      name: "Pabanang",
      type: false,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
      name: "Me",
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    Response(text);
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
        title: Text("Chatbot"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(children: <Widget>[
        Flexible(
            child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )),
        Divider(height: 1.0),
        Container(
          decoration: BoxDecoration(color: Theme.of(context).cardColor),
          child: _buildTextComposer(),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int index) {
          // setState(() {
          //   this.index = index;
          // });
          if (index == 1) {
            // Navigator.of(context).pushReplacementNamed('/tipspage');
          } else if (index == 2) {
            Navigator.of(context).pushReplacementNamed('/chatbotpage');
          } else if (index == 3) {
            // Navigator.of(context).pushReplacementNamed('/profilpage');
          } else if (index == 4) {
            // Navigator.of(context).pushReplacementNamed('/akunpage');
          } else if (index == 0) {
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
            icon: Icon(Icons.email),
            title: Text("Inbox",
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

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.name, this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: CircleAvatar(
          child: Text(
            'P',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: TemaApp.greenColor,
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(text),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(this.name, style: Theme.of(context).textTheme.subhead),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(text),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: CircleAvatar(
            child: Text(
          this.name[0],
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),backgroundColor: TemaApp.yellowsColor,),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
