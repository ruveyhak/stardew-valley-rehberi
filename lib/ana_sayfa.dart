import 'package:flutter/material.dart';
import 'package:stardew_rehber/ciftlik.dart';
import 'package:stardew_rehber/esya.dart';
import 'package:stardew_rehber/nasil.dart';
import 'package:stardew_rehber/Halkevi.dart';
import 'package:stardew_rehber/Karakter.dart';
import 'package:stardew_rehber/ogeler.dart';
import 'package:stardew_rehber/vadi.dart';
import 'package:stardew_rehber/vadi_o.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB8B386), // Uygulama arka plan rengi
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
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
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
          Center(
            child: Image.asset(
              'assets/images/menulu.jpeg',
              fit: BoxFit.cover, // Resmi tam ekrana yaymak için fit parametresi eklendi
              height: 550, // Örnek olarak bir yükseklik eklenmiştir
            ),
          ),
          buildDoubleRow(context,
              'assets/images/Karakter.jpg', 'Karakterler', KarakterPage(),
              'assets/images/ciftlik.jpg', 'Çiftlik', CiftlikPage()
          ),
          buildDoubleRow(context,
              'assets/images/yıldız_esya.jpg', 'Eşya', EsyaPage(),
              'assets/images/nasil.png', 'Nasıl Oynanır?', NasilPage()
          ),
          buildDoubleRow(context,
              'assets/images/vadi.jpg', 'Vadi', VadiPage(),
              'assets/images/farm-out.jpg', 'Vadi Ötesi', VadiOPage()
          ),
          buildDoubleRow(context,
            'assets/images/kıyafet.jpg', 'Kıyafetler', KiyafetPage(),
              'assets/images/halkevi.jpg', 'Halkevi', HalkeviPage()

          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFF2B425), // BottomAppBar rengi ayarlandı
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Butonları yatayda eşit şekilde yerleştirmek için
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0), // Butonların etrafındaki boşluk
              child: SizedBox(
                width: 150, // Buton genişliği
                height: 50, // Buton yüksekliği
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEEAC24), // Buton rengi
                  ).copyWith(
                    foregroundColor: MaterialStateProperty.all(Colors.white), // Metin rengi beyaz
                  ),
                  onPressed: () {
                    // Rehbere giriş işlemleri burada yapılır
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AnaSayfa()),
                    );
                  },
                  child: Text('Rehbere Giriş'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
      decoration: BoxDecoration(
        color: Color(0xFF00244E),
        borderRadius: BorderRadius.circular(16), // Container kenarlarını yuvarla
      ),
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
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            width: 150, // Buton genişliği
            height: 30, // Buton yüksekliği
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF00244E), // Buton rengi
              ).copyWith(
                foregroundColor: MaterialStateProperty.all(Colors.white), // Metin rengi beyaz
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => targetPage),
                );
              },
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AnaSayfa(),
  ));
}
