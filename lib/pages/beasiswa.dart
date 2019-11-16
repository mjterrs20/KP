import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:kp/models/models_mahasiswa.dart';

class BeasiswaPage extends StatefulWidget {
  @override
  _BeasiswaPageState createState() => _BeasiswaPageState();
}

class _BeasiswaPageState extends State<BeasiswaPage> {
  Data data;
  var dataId = new List(20);
  Future<List<Data>> _getUsers() async {
    String apiUrl = "http://jurusanteknik.com/api/kecamatan";
    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<Data> users = [];
    for (int i = 0; i < listUser.length; i++) {
      users.add(Data.fromJson(listUser[i]));
    }
    return users;
  }

  void initState() {
    super.initState();
    _getUsers().then((value) {
      // dataId = [];
      for (int i = 0; i < 20; i++) {
        // print(value[i].id);
        dataId[i] = value[i].id;
        print(dataId[i]);
      }
    });
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
        title: Text("Beasiswa"),
        centerTitle: true,
        elevation: 0.0,
      ),
      
    );
  }
}
