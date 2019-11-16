import 'package:flutter/material.dart';
import 'package:kp/utils/colors.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/pages/tipsdetail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TipsPage extends StatefulWidget {
  @override
  _TipsPageState createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  void initState() {
    super.initState();
  }
  var _index = 0;
  Widget _builderStep() => Container(
        margin: EdgeInsets.only(top: 10),
        color: Colors.white,
        child: Stepper(
          steps: [
            Step(
              title: Text("Luruskan Niat"),
              content: Text("Niat merupakan hal yang paling mendasar. Sebelum kalian melakukan suatu hal maka luruskan niat terlebih dahulu yaa..Niatkan belajar karena Allah."),
            ),
            Step(
              title: Text("Buang rasa MALASMU!!!"),
              content: Text("Rasa malas memang selalu menghampiri, dan bahkan membuat kita tidak jadi melakukan sesuatu yang sudah di harapkan tadi, Bila rasa MALAS tersebut datang kembali maka ingatlah kembalii dengan niat mu dan bangun motivasimu kembali"),
            ),
            Step(
              title: Text("Perbanyak Belajar"),
              content: Text("BELAJAR merupakan salah satu hal terpenting ketika kamu ingin mengejar sesuatu, tanpa belajar kamu tidak akan mengetahui sesuatu hal tersebut. Tips untuk kamu yang susah belajar:  1. Mulai dengan sesuatu yang kamu sukai.  Pelajari dari hal termudah dahulu.  3. Terus tingkatkan belajarmu  4. Konsisten dalam belajar"),
            ),
            Step(
              title: Text("Ikuti Kursus (Optional)"),
              content: Text("Setelah kamu belajar, cobalah ikuti kursus untuk meningkatkan proses belajarmu, karena dengan kamu mengikuti kursus proses belajarmu menjadi lebih variatif, dan kamu akan mendapatkan tips dan trik untuk menjawab soal sehingga menjadi lebih mudah dikerjakan, Bila kamu tidak cukup waktu atau finansial jangan khawatir. kamu bisa memanfaatkan pembelajaran di internet seperti dari youtube, situs pembelajaran dll untuk meningkatkan pengetahuan yang kamu miliki.  Ingat belajar tidak sebatas hanya di bangku sekolah saja."),
            ),
            Step(
              title: Text("Perbanyak Latihan"),
              content: Text("Latihan dapat mengasah kemampuan dari hasil belajar. teruslah berlatih seperti mengerjakan soal. Jangan menyerah apabila menemui kesulitan saat latihan. karena hal tersebut merupakan proses kamu meningkatkan kualitas pengetahuanmu."),
            ),
            Step(
              title: Text("Perbanyak Doa"),
              content: Text("Usaha tanpa Doa sama dengan sombong. Doa merupakan cara kita dalam menyampaikan keinginan kita kepada tuhan. bayangkan jika anda usaha tanpa dibarengi dengan Doa, apabila kalian sudah berusaha semaksimal mungkin namun tuhan tidak meridhoi maka hal yang diusahakan tersebut mustahil terjadi. Maka perbanyaklah berdoa dan memohon untuk diberikan petunjuk sehingga kita tidak salah dalam mengambil langkah."),
            ),
            Step(
              title: Text("Minta Restu Orang Tua"),
              content: Text("Mintalah restu kepada orang tua kamu. Dengan Restu dan Doa orang tua secara tidak langsung menambah dorongan kamu untuk mengejar cita-citamu"),
            ),
            Step(
              title: Text("Jangan Mudah Menyerah !!"),
              content: Text("Jangan menyerah dengan hasil yang kamu dapati, terus berusaha dan tingkatkan terus pengetahuanmu!!")
            ),
          ],
          currentStep: _index,
          onStepTapped: (index) {
            setState(() {
              _index = index;
            });
          },
          controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
              Container(),
        ),
      );
  int index = 1;
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
        title: Text("Tips"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _builderStep(),
              
              SizedBox(height: 700)
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int index) {
          // setState(() {
          //   this.index = index;
          // });
          if (index == 1) {
            Navigator.of(context).pushReplacementNamed('/tipspage');
          } else if (index == 2) {
            Navigator.of(context).pushReplacementNamed('/chatbotpage');
          } else if (index == 3) {
            Navigator.of(context).pushReplacementNamed('/profilpage');
          } else if (index == 4) {
            Navigator.of(context).pushReplacementNamed('/akunpage');
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
