import 'package:flutter/material.dart';

class HaleyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Haley - Stardew Valley Wiki'),
          backgroundColor: Colors.green[600],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.green.shade100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildHeader(),
                  SizedBox(height: 20),
                  _buildImage(),
                  SizedBox(height: 20),
                  _buildBasicInfo(),
                  SizedBox(height: 20),
                  _buildSpringSchedule(),
                  SizedBox(height: 20),
                  _buildSummerSchedule(),
                  SizedBox(height: 20),
                  _buildFallSchedule(),
                  SizedBox(height: 20),
                  _buildWinterSchedule(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown[200],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.brown.shade600, width: 5),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Haley',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Center(
      child: Image.network(
        'https://stardewvalleywiki.com/mediawiki/images/1/1b/Haley.png',
        width: 128,
        height: 128,
      ),
    );
  }

  Widget _buildBasicInfo() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown[200],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.brown, width: 2),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Doğum Günü: Bahar 14',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Yaşadığı Yer: Pelikan Kasabası',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Adres: Söğüt Sokağı, No: 2',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            'Aile:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Image.network(
                'https://stardewvalleywiki.com/mediawiki/images/c/c3/Emily_Icon.png',
                width: 32,
                height: 32,
              ),
              SizedBox(width: 5),
              Text(
                'Emily (Kız Kardeşi)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),

          SizedBox(height: 10),
          Text(
            'Evlilik: Evlenilebilir',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildSpringSchedule() {
    return ExpansionTile(
      title: Text(
        "Bahar",
        style: TextStyle(
          color: Colors.green.shade600,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(3, 3),
              blurRadius: 4.0,
            ),
          ],
        ),
      ),
      children: <Widget>[
        _buildScheduleTable('Pazartesi', [
          ['9:00 ÖÖ', 'Odasında durur.'],
          ['10:00 ÖÖ', 'Odasından çıkar ve mutfağa gider'],
          ['11:00 ÖÖ', 'Evden çıkar ve Marnie\’nin çiftliğinin güneyindeki nehire gider'],
          ['12:20 ÖS', 'Nehirin orada fotoğraf çeker.'],
          ['4:30 ÖS', 'Eve doğru yola çıkar.'],
          ['5:50 ÖS', 'Eve ulaşır, mutfakta yemek yapar.'],
          ['8:20 ÖS', 'Odasına gider.'],
          ['11:00 ÖS', 'Uyur.'],

        ]),
        _buildScheduleTable('Salı', [
          ['9:00 ÖÖ', 'Odasında durur.'],
          ['11:00 ÖÖ', 'Çeşmeye gitmek için evden ayrılır.'],
          ['12:20 ÖS', 'Halkevi\'nin solundaki çeşmededir.'],
          ['4:30 ÖS', 'Eve doğru yola çıkar.'],
          ['5:50 ÖS', 'Eve ulaşır, mutfakta yemek yapar.'],
          ['8:20 ÖS', 'Odasına gider.'],
          ['10:30 ÖS', 'Uyur.'],
        ]),
        _buildScheduleTable('Çarşamba', [
          ['9:00 ÖÖ', 'Odasında durur.'],
          ['11:00 ÖÖ', 'Salona geçer.'],
          ['12:20 ÖS', 'Çeşmeye gitmek için evden ayrılır.'],
          ['4:30 ÖS', 'Eve doğru yola çıkar.'],
          ['5:30 ÖS', 'Eve ulaşır.'],
          ['5:50 ÖS', 'Mutfakta yemek yapar.'],
          ['8:20 ÖS', 'Odasına gider.'],
          ['10:30 ÖS', 'Uyur.'],
        ]),
        _buildScheduleTable('Perşembe,Cuma,Cumartesi,Pazar', [
          ['9:00 ÖÖ', 'Odasında durur.'],
          ['11:00 ÖÖ', 'Çeşmeye gitmek için evden ayrılır.'],
          ['12:20 ÖS', 'Halkevi\'nin solundaki çeşmededir.'],
          ['4:30 ÖS', 'Eve doğru yola çıkar.'],
          ['5:50 ÖS', 'Mutfakta yemek yapar.'],
          ['8:20 ÖS', 'Odasına gider.'],
          ['10:30 ÖS', 'Uyur.'],
        ]),
      ],
    );
  }

  Widget _buildSummerSchedule() {
    return ExpansionTile(
      title: Text(
        "Yaz",
        style: TextStyle(
          color: Colors.orange.shade600,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(3, 3),
              blurRadius: 4.0,
            ),
          ],
        ),
      ),
      children: <Widget>[
        _buildScheduleTable('Düzenli Takvim - Çarşamba Hariç', [
          ['9:00 ÖÖ', 'Odasında durur.'],
          ['10:30 ÖÖ', 'Sahile gitmek için evden çıkar.'],
          ['11:50 ÖÖ', 'Sahilin sol yukarısında durur.'],
          ['1:30 ÖS', 'Alex\'in dondurma standına gider.'],
          ['2:30 ÖS', 'Alex\'in dondurma standının yanında.'],
          ['5:00 ÖS', 'Eve doğru yola çıkar.'],
          ['6:20 ÖS', 'Mutfakta yemek yapar.'],
          ['8:20 ÖS', 'Odasına geçer.'],
          ['11:00 ÖS', 'Uyur.'],
        ]),
        _buildScheduleTable('Çarşamba', [
          ['9:00 ÖÖ', 'Odasında durur.'],
          ['12:10 ÖS', 'Salona geçer.'],
          ['4:40 ÖS', 'Mutfakta yemek yapar.'],
          ['8:20 ÖS', 'Odasına geçer.'],
          ['10:30 ÖS', 'Uyur.'],
        ]),

      ],
    );
  }

  Widget _buildFallSchedule() {
    return ExpansionTile(
      title: Text(
        "Güz",
        style: TextStyle(
          color: Colors.brown.shade600,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(3, 3),
              blurRadius: 4.0,
            ),
          ],
        ),
      ),
      children: <Widget>[
        _buildScheduleTable('Pazartesi', [
          ['9:00 ÖÖ', 'Odasında durur.'],
          ['10:20 ÖÖ', 'Mutfakta yemek yapar.'],
          ['11:00 ÖÖ', 'Evden çıkar ve Marnie’nin çiftliğinin güneyindeki nehire gider.'],
          ['12:20 ÖS', 'Nehirin orada fotoğraf çeker.'],
          ['4:30 ÖS', 'Eve doğru yola çıkar.'],
          ['5:50 ÖS', 'Mutfakta yemek yapar.'],
          ['8:20 ÖS', 'Odasında durur.'],
          ['11:00 ÖS', 'Uyur.'],
        ]),

        _buildScheduleTable('Salı', [
          ['9:00 ÖÖ', 'Odasında durur.'],
          ['12:10 ÖS', 'Salona geçer.'],
          ['4:40 ÖS', 'Mutfakta yemek yapar.'],
          ['8:20 ÖS', 'Odasına geçer.'],
          ['10:30 ÖS', 'Uyur.'],
        ]),
        _buildScheduleTable('Çarşamba, Perşembe, Cuma, Cumartesi, Pazar', [
          ['11:00 ÖÖ', 'Çeşmeye gitmek için evden ayrılır.'],
          ['12:20 ÖS', 'Halkevi\'nin solundaki çeşmededir.'],
          ['4:30 ÖS', 'Eve doğru yola çıkar.'],
          ['5:50 ÖS', 'Mutfakta yemek yapar.'],
          ['8:20 ÖS', 'Odasına geçer.'],
          ['10:30 ÖS', 'Uyur.'],
        ]),

      ],
    );
  }

  Widget _buildWinterSchedule() {
    return ExpansionTile(
      title: Text(
        "Kış",
        style: TextStyle(
          color: Colors.blue.shade600,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(3, 3),
              blurRadius: 4.0,
            ),
          ],
        ),
      ),
      children: <Widget>[
        _buildScheduleTable('Pazartesi', [
          ['10:30 ÖÖ', 'Yataktan kalkar.'],
          ['12:00 ÖS', 'Mutfağa gider.'],
          ['1:00 ÖS', 'Mutfaktadır.'],
          ['7:00 ÖS', 'Odasından çıkar.'],
        ]),
        _buildScheduleTable('Salı', [
          ['11:00 ÖÖ', 'Odasındadır.'],
          ['12:00 ÖS', 'Mutfağa gider.'],
          ['5:10 ÖS', 'Mutfaktadır.'],
          ['8:00 ÖS', 'Oturma odasındadır.'],
        ]),
        _buildScheduleTable('Çarşamba', [
          ['10:00 ÖÖ', 'Odasındadır.'],
          ['11:00 ÖÖ', 'Evden çıkar ve çeşmeye gider.'],
          ['12:20 ÖS', 'Halkevi’nin yanındaki çeşmededir.'],
          ['4:30 ÖS', 'Başkan’ın evindedir.'],
          ['5:50 ÖS', 'Eve gider, yemek yapar.'],
          ['8:00 ÖS', 'Eve döner.'],
        ]),
        _buildScheduleTable('Perşembe', [
          ['10:30 ÖÖ', 'Uyanır.'],
          ['12:00 ÖS', 'Odasından çıkar ve mutfağa gider.'],
          ['4:00 ÖS', 'Mutfaktan çıkar ve odasına gider.'],
        ]),
        _buildScheduleTable('Cuma', [
          ['10:30 ÖÖ', 'Yataktan çıkar.'],
          ['12:00 ÖS', 'Mutfağa gider.'],
          ['4:00 ÖS', 'Odasına gider.'],
          ['7:00 ÖS', 'Odasından çıkar.'],
        ]),
        _buildScheduleTable('Cumartesi', [
          ['9:00 ÖÖ', 'Odasında.'],
          ['12:00 ÖS', 'Odasından çıkar ve mutfağa gider.'],
          ['4:00 ÖS', 'Mutfaktan çıkar ve odasına gider.'],
          ['7:00 ÖS', 'Odasından çıkar ve salona gider.'],
          ['10:00 ÖS', 'Uyur.'],
        ]),
        _buildScheduleTable('Pazar', [
          ['12:00 ÖS', 'Yatak odasından mutfağa gider.'],
          ['2:00 ÖS', 'Mutfakta.'],
          ['5:00 ÖS', 'Kendi yatak odasında.'],
          ['7:00 ÖS', 'Yatak odasından çıkıp salona gider.'],
        ]),
        _buildScheduleTable('Yağmurlu Günler', [
          ['10:30 ÖÖ', 'Uyanır ve gardırobunun yanında durur.'],
          ['11:30 ÖÖ', 'Makyaj masasına gider.'],
          ['12:00 ÖS', 'Mutfağa gitmek için yatak odasından çıkar.'],
          ['4:00 ÖS', 'Yatak odasına döner.'],
          ['7:00 ÖS', 'Odasından çıkar ve salonda durur.'],
          ['10:00 ÖS', 'Uyur.'],
        ]),
        _buildScheduleTable('Kış - 9. Gün', [
          ['11:30 ÖS', 'Harvey\'nin Kliniği\'nde.'],
          ['4:00 ÖS', 'Eve doğru yürür.'],
        ]),

      ],
    );
  }

  /* evlilil için ayrı bir bar ekle  */


  Widget _buildScheduleTable(String title, List<List<String>> data) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.brown.shade200,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Divider(color: Colors.grey.shade300),
          for (var row in data)
            _buildScheduleRow(row[0], row[1]),
        ],
      ),
    );
  }

  Widget _buildScheduleRow(String time, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              time,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
