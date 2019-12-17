import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:kp/utils/colors.dart';


class PanduanHajiPage extends StatefulWidget {
  @override
  _PanduanHajiPageState createState() => _PanduanHajiPageState();
}

class _PanduanHajiPageState extends State<PanduanHajiPage> {
  var _index = 0;
  Widget _builderStep() => Container(
        margin: EdgeInsets.only(top: 10),
        color: Colors.white,
        child: Stepper(
          steps: [
            Step(
              title: Text("Ihram dan Niat"),
              content: Text(
                  "Pelaksanaan ibadah haji dimulai pada tanggal 8 Dzulhijjah. Jamaah melakukan ihram dibarengi dengan niat dari tempat asal. Setelah persiapan, seluruh jamaah haji berteduh di tenda sambil menunggu waktu wukuf di Arafah yang dimulai pada tanggal 9 Dzulhijjah, ketika matahari tergelincir ke barat."),
            ),
            Step(
              title: Text("Wukuf di Arafah"),
              content: Text(
                  "Pada tanggal 9 Dzulhijjah, mulai waktu dzuhur sekitar pukul 12 siang hingga matahari terbenam sekitar pukul 6 sore, adalah waktu wukuf. Saat itulah jamaah memohon doa kepada Allah SWT."),
            ),
            Step(
              title: Text("Mabit di Muzdalifah"),
              content: Text(
                  "Ketika matahari tenggelam pada hari itu, jamaah meninggalkan Arafah menuju Muzdalifah untuk menginap (mabit). Perjalanan dari Arafah ke Muzdalifah disebut melelahkan dan macet karena jutaan manusia berbondong-bondong menuju ke sana, sambil mengambil kerikil untuk melontar jumrah."),
            ),
            Step(
              title: Text("Jumrah Aqobah"),
              content: Text(
                  "Pada tanggal 10 Dzulhijjah, jamaah bertolak dari Muzdalifah menuju Mina sebelum matahari terbit untuk melontar Jumrah Aqobah tujuh lontaran. Setelah merampungkan lontar jumrah, jamaah dilanjutkan bertahallul (mencukur rambutnya), kemudian diperbolehkan menggunakan baju biasa."),
            ),
            Step(
              title: Text("Mabit di Mina"),
              content: Text(
                  "Setelah tahallul awal, jamaah kembali Mina untuk menginap minimal 2 hari, yaitu pada tanggal 11-12 Dzulhijjah. Disunnahkan melontar jumrah dengan tiga sasaran."),
            ),
            Step(
              title: Text("Thawaf Ifadah"),
              content: Text(
                  "Setelah merampungkan mabit dan melontar jumrah di Mina, jamaah menuju Mekah untuk melaksanakan Thawaf Ifadah dilanjutkan dengan Sai. Bagi yang telah melaksanakan tahallul dan mabit di Mina, berarti rangkaian hajinya rampung bersama dengan pelaksanaan Sai."),
            ),
            Step(
              title: Text("Thawaf Wada"),
              content: Text(
                  "Wa’da berarti perpisahan. Setelah menyelesaikan seluruh ritual haji, jamaah melaksanaan thawaf wada sebelum meninggalkan Mekah untuk kembali ke negaranya masing-masing."),
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
        title: Text("Panduan Haji"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[_builderStep(), SizedBox(height: 700)],
        ),
      ),
    );
  }
}
