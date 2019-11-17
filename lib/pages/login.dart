import 'package:flutter/material.dart';
import 'package:kp/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';
import 'package:http/http.dart' as http;
import 'package:kp/models/login.dart';
import 'dart:convert';
import 'package:kp/utils/preference.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  PreferenceUtil appData = new PreferenceUtil();

  String username = "";
  String password = "";
  String id = "";
  String email = "";
  String nama = "";
  String jurusan = "";
  String token = "";
  String foto = "";

  bool checkPass = false;
  bool checkPassUlang = false;
  bool checkPassLength = false;
  bool invisiblePass = true;
  bool invisiblePassValidate = true;

  void initState() {
    super.initState();
  }

  _saveDataToSharedprefs() {
    appData.saveBoolVariable("login", true);
    appData.saveVariable("username", username);
    appData.saveVariable("password", password);
    appData.saveVariable("id", id);
    appData.saveVariable("email", email);
    appData.saveVariable("nama", nama);
    appData.saveVariable("jurusan", jurusan);
    appData.saveVariable("token", token);
    appData.saveVariable("foto", foto);
  }

  Data data;
  Login login;

  Future<Data> post(String userName, String password) async {
    String apiUrl = "http://jurusanteknik.com/api/member_login";

    var apiResult = await http.post(apiUrl, body: {
      "username": userName,
      "unique_password": password,
    }); // buat post dengan parameter body
    var jsonObject = json.decode(apiResult
        .body); // merubah apiResult menjadi Json, ngambil juga dari api atau response
     var userData = (jsonObject as Map<String, dynamic>)['data']; 

    return Data.fromJson(userData);
  }

  Widget titleInput(title) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xffc4c4c4),
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Comfortaa',
            ),
          ),
        ));
  }

  Widget formInput(control, keyboard, length, obscure, oEC, visibleIn) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
      child: TextField(
        controller: control,
        keyboardType: keyboard,
        maxLength: length,
        obscureText: obscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
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
        title: Text("Login"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            titleInput("Username"),
            Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                child: TextField(
                    keyboardType: TextInputType.text,
                    controller: usernameController,
                    decoration: InputDecoration(border: OutlineInputBorder()))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                titleInput("Masukkan Password Anda"),
              ],
            ),
            Stack(
              children: <Widget>[
                formInput(passwordController, TextInputType.text, 20,
                    invisiblePassValidate, 1, invisiblePassValidate),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
                    child: IconButton(
                      icon: Icon(
                        invisiblePassValidate
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 30,
                        color: Color(0xffc4c4c4),
                      ),
                      onPressed: () {
                        setState(() {
                          invisiblePassValidate = !invisiblePassValidate;
                        });
                      },
                    ),
                  ),
                )
              ],
            ), //batas
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                    elevation: 10.0,
                    color: TemaApp.yellowsColor,
                    textColor: Colors.white,
                    child: Text('Login',
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white)),
                    onPressed: () async {
                      print(usernameController.text);
                      post(usernameController.text, passwordController.text).then((value) {
                        // fungsi then membalikan nilai dari api
                        setState(() {
                          data = value;
                          username = data.username;
                          password = data.uniquePassword;
                          id = data.id;
                          email = data.email;
                          nama = data.nama;
                          jurusan = data.jurusan;
                          token = data.token;
                          foto = data.urlFoto;
                        });
                      });
                      if (token != ''){
                        _saveDataToSharedprefs();
                        // route
                      }
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
