import 'package:flutter/material.dart';
import 'package:stardew_rehber/Abigail.dart';
import 'package:stardew_rehber/Alex.dart';
import 'package:stardew_rehber/Buyucu.dart';
import 'package:stardew_rehber/Caroline.dart';
import 'package:stardew_rehber/Clint.dart';
import 'package:stardew_rehber/Cuce.dart';
import 'package:stardew_rehber/Demetrius.dart';
import 'package:stardew_rehber/Elliott.dart';
import 'package:stardew_rehber/Emily.dart';
import 'package:stardew_rehber/Evelyn.dart';
import 'package:stardew_rehber/George.dart';
import 'package:stardew_rehber/Gus.dart';
import 'package:stardew_rehber/Haley.dart';
import 'package:stardew_rehber/Harvey.dart';
import 'package:stardew_rehber/Jas.dart';
import 'package:stardew_rehber/Jodi.dart';
import 'package:stardew_rehber/Kent.dart';
import 'package:stardew_rehber/Krobus.dart';
import 'package:stardew_rehber/Leah.dart';
import 'package:stardew_rehber/Leo.dart';
import 'package:stardew_rehber/Lewis.dart';
import 'package:stardew_rehber/Linus.dart';
import 'package:stardew_rehber/Marnie.dart';
import 'package:stardew_rehber/Maru.dart';
import 'package:stardew_rehber/Pam.dart';
import 'package:stardew_rehber/Penny.dart';
import 'package:stardew_rehber/Pierre.dart';
import 'package:stardew_rehber/Robin.dart';
import 'package:stardew_rehber/Sam.dart';
import 'package:stardew_rehber/Sandy.dart';
import 'package:stardew_rehber/Sebastian.dart';
import 'package:stardew_rehber/Shane.dart';
import 'package:stardew_rehber/Vincent.dart';
import 'package:stardew_rehber/Willy.dart';
import 'package:stardew_rehber/bouncer.dart';
import 'package:stardew_rehber/dobson.dart';
import 'package:stardew_rehber/gil.dart';
import 'package:stardew_rehber/governor.dart';
import 'package:stardew_rehber/grandpa.dart';
import 'package:stardew_rehber/gunther.dart';
import 'package:stardew_rehber/henchman.dart';
import 'package:stardew_rehber/marlon.dart';
import 'package:stardew_rehber/morris.dart';
import 'package:stardew_rehber/mrqi.dart';

class KarakterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEAC24), // Uygulama arka plan rengi
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.search),
          color: Colors.white,
          onPressed: () {
            // Arama işlemleri burada yapılır
            print('Arama');
          },
        ),
        backgroundColor: Color(0xFF00244E), // AppBar rengi ayarlandı
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFEEAC24), // Menü arka plan rengi ayarlandı
              borderRadius: BorderRadius.circular(16), // Köşeler yuvarlatıldı
            ),
            child: PopupMenuButton<String>(
              onSelected: (String result) {
                // Menü seçenekleri ile ilgili işlemler burada yapılır
                print(result);
              },
              itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Ayarlar',
                  child: Text('Ayarlar'),
                ),
                const PopupMenuItem<String>(
                  value: 'Çıkış',
                  child: Text('Çıkış'),
                ),
              ],
            ),
          ),
        ],
      ),

      body: ListView(
        children: <Widget>[
          buildDoubleRow(context,
              'assets/images/kutulu_sv/alex_kutu.png', '', AlexPage(),
              'assets/images/kutulu_sv/haley_kutu.png', '', HaleyPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/buyucu_kutu.png', '', BuyucuPage(),
              'assets/images/kutulu_sv/caroline_kutu.png', '', CarolinePage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/clint_kutu.png', '', ClintPage(),
              'assets/images/kutulu_sv/emily_kutu.png', '', EmilyPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/sebastian_kutu.png', '', SebastianPage(),
              'assets/images/kutulu_sv/abigail_kutu.png', '', AbigailPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/sam_kutu.png', '', SamPage(),
              'assets/images/kutulu_sv/penny_kutu.png', '', PennyPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/robin_kutu.png', '', RobinPage(),
              'assets/images/kutulu_sv/demetrius_kutu.png', '', DemetriusPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/evelyn_kutu.png', '', EvelynPage(),
              'assets/images/kutulu_sv/george_kutu.png', '', GeorgePage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/leah_kutu.png', '', LeahPage(),
              'assets/images/kutulu_sv/elliot_kutu.png', '', ElliottPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/jodi_kutu.png', '', JodiPage(),
              'assets/images/kutulu_sv/kent_kutu.png', '', KentPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/lewis_kutu.png', '', LewisPage(),
              'assets/images/kutulu_sv/marnie_kutu.png', '', MarniePage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/jas_kutu.png', '', JasPage(),
              'assets/images/kutulu_sv/vincent_kutu.png', '', VincentPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/harvey_kutu.png', '', HarveyPage(),
              'assets/images/kutulu_sv/pierre_kutu.png', '', PierrePage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/maru_kutu.png', '', MaruPage(),
              'assets/images/kutulu_sv/shane_kutu.png', '', ShanePage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/pam_kutu.png', '', PamPage(),
              'assets/images/kutulu_sv/gus_kutu.png', '', GusPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/willy_kutu.png', '', WillyPage(),
              'assets/images/kutulu_sv/linus_kutu.png', '', LinusPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/leo_kutu.png', '', LeoPage(),
              'assets/images/kutulu_sv/sandy_kutu.png', '', SandyPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/cuce_kutu.png', '', CucePage(),
              'assets/images/kutulu_sv/krobus_kutu.png', '', KrobusPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/gunther_kutu.png', '', GuntherPage(),
              'assets/images/kutulu_sv/marlon_kutu.png', '', MarlonPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/bouncer_kutu.png', '', BouncerPage(),
              'assets/images/kutulu_sv/dobson_kutu.png', '', DobsonPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/gil_kutu.png', '', GilPage(),
              'assets/images/kutulu_sv/governor_kutu.png', '', GovernorPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/grandpa_kutu.png', '', GrandpaPage(),
              'assets/images/kutulu_sv/henchman_kutu.png', '', HenchmanPage()
          ),
          buildDoubleRow(context,
              'assets/images/kutulu_sv/morris_kutu.png', '', MorrisPage(),
              'assets/images/kutulu_sv/mrqi_kutu.png', '', MrQiPage()
          ),




        ],
      ),
    );
  }
}

Widget buildDoubleRow(BuildContext context, String imagePath1, String buttonText1, Widget targetPage1, String imagePath2, String buttonText2, Widget targetPage2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      buildImageButton(context, imagePath1, buttonText1, targetPage1),
      buildImageButton(context, imagePath2, buttonText2, targetPage2),
    ],
  );
}

Widget buildImageButton(BuildContext context, String imagePath, String buttonText, Widget targetPage) {
  return Container(
    margin: EdgeInsets.all(8.0),

    child: Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => targetPage),
            );
          },
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 150,
            width: 150,
          ),
        ),


      ],
    ),
  );
}

