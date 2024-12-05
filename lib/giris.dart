import 'package:flutter/material.dart';
import 'package:stardew_rehber/ana_sayfa.dart';

class Giris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'assets/images/Stardew_Valley.jpg',
              fit: BoxFit.cover, // Resmi tam ekrana yaymak için fit parametresi eklendi
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFF2B425), // BottomAppBar rengi ayarlandı
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Butonları yatayda eşit şekilde yerleştirmek için
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(6.0), // Butonların etrafındaki boşluk
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEEAC24), // Buton rengi
                ).copyWith(
                  foregroundColor: MaterialStateProperty.all(Colors.white), // Metin rengi beyaz
                ),
                onPressed: () {
                  // Anasayfaya yönlendirme işlemleri burada yapılır
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> AnaSayfa()),
                  );
                  print('Anasayfa');
                },
                child: Text('Rehbere Giriş', style: TextStyle(fontSize: 25.0),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Giris(),
  ));
}
