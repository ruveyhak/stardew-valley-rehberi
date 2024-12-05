import 'package:flutter/material.dart';

class DemetriusPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demetrius - Stardew Valley Wiki'),
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
          'Alex',
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
        'https://stardewvalleywiki.com/mediawiki/images/0/04/Alex.png',
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
            'Doğum Günü: Yaz 19',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Yaşadığı Yer: Dağ',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Adres: Dağ Sokağı, No: 24',
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
                'https://stardewvalleywiki.com/mediawiki/images/a/ad/George_Icon.png',
                width: 32,
                height: 32,
              ),
              SizedBox(width: 5),
              Text(
                'Robin (Eşi)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Image.network(
                'https://stardewvalleywiki.com/mediawiki/images/5/54/Evelyn_Icon.png',
                width: 32,
                height: 32,
              ),
              SizedBox(width: 5),
              Text(
                'Maru (Kızı)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(width: 5),
              Text(
                  'Sebastian (Oğlu)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              )
            ],
          ),

          SizedBox(height: 10),
          Text(
            'Evlilik: Evlenilemez',
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
        _buildScheduleTable('Bahar - 16 (Çöl Otobüsü Onarılmışsa)' , [
          ['11:30 ÖÖ', 'Çöl Şöleni\'ne katılmak için Patisko Çölü\'ne giden otobüse biner.'],
          ['11:40 ÖÖ', 'Şef standının yanında durur.'],
          ['01:20 ÖS', 'Vadi\'ye dönen otobüse biner.'],
        ]),
        _buildScheduleTable('Çöl Şöleni (Satıcı Olarak)', [
          ['11:10 ÖÖ', 'Patisko Çölü\'ne giden otobüse biner.'],
          ['11:30 ÖS', 'Standına varır.'],
          ['0:00 ÖS', 'Standından ayrılır ve Vadi\'ye dönen otobüse biner.'],
        ]),
        _buildScheduleTable('Yağmur', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda gazete okur.'],
          ['11:00 ÖS', 'Laboratuvarda mikroskop başında not tutar.'],
          ['3:00 ÖS', 'Marangoz Atölyesi\'nin girişindeki tezgahın arkasında durur.'],
          ['3:40 ÖS', 'Laboratuvardaki mikroskopun başına döner.'],
          ['6:00 ÖS', 'Mutfakta buzdolabının önünde durur.'],
          ['7:20 ÖS', 'Mutfakta ocak başında durur.'],
          ['8:00 ÖS', 'Yatak odasında kitaplığın yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Cuma', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda mikroskop başında not tutar.'],
          ['4:00 ÖS', 'Laboratuvardan çıkıp Salon\'a doğru gider.'],
          ['5:50 ÖS', 'Salon\'da, Robin\'in yanında durur.'],
          ['7:20 ÖS', 'Salon\'da, Robin ile dans eder.'],
          ['9:00 ÖS', 'Salon\'dan çıkıp eve uyumaya gider.'],
        ]),
        _buildScheduleTable('Düzenli Program', [
          ['7:50 ÖÖ', 'Evinde, mutfaktaki lavabonun önünde durur.'],
          ['11:00 ÖS', 'Laboratuvarda mikroskop başında not tutar.'],
          ['2:30 ÖS', 'Dışarıda, garajının yanındaki saksılı bitkinin yanında durur.'],
          ['3:30 ÖS', 'Evinin güneydoğusundaki uçurumda durur.'],
          ['7:00 ÖS', 'Evine gider ve mutfağındaki buzdolabının önünde durur.'],
          ['8:40 ÖS', 'Mutfakta ocak başında durur.'],
          ['9:00 ÖS', 'Yatak odasında kitaplığın yanında durur.'],
          ['10:30 ÖS', 'Yatağa gider.'],
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
        _buildScheduleTable('Yeşil Yağmur (Yıl 1)', [
          ['Tüm Gün', 'Evinin yakınındaki bir çalıdan örnekler toplar.'],
        ]),
        _buildScheduleTable('Yaz - 25', [
          ['8:40 ÖÖ', 'Evden Sağlık Ocağı\'na gitmek için ayrılır.'],
          ['1:30 ÖS', 'Sağlık Ocağı\'nda sol taraftaki muayene odasına geçer.'],
          ['4:00 ÖS', 'Sağlık Ocağı\'ndan ayrılıp eve döner ve yatak odasındaki kitaplığın yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Yağmur', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda gazete okur.'],
          ['11:00 ÖS', 'Laboratuvarda mikroskop başında not tutar.'],
          ['3:00 ÖS', 'Marangoz Atölyesi\'nin girişindeki tezgahın arkasında durur.'],
          ['3:40 ÖS', 'Laboratuvardaki mikroskopun başına döner.'],
          ['6:00 ÖS', 'Mutfakta buzdolabının önünde durur.'],
          ['7:20 ÖS', 'Mutfakta ocak başında durur.'],
          ['8:00 ÖS', 'Yatak odasında kitaplığın yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Cuma', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda mikroskop başında not tutar.'],
          ['4:00 ÖS', 'Laboratuvardan çıkıp Salon\'a doğru gider.'],
          ['5:50 ÖS', 'Salon\'da, Robin\'in yanında durur.'],
          ['7:20 ÖS', 'Salon\'da, Robin ile dans eder.'],
          ['9:00 ÖS', 'Salon\'dan çıkıp eve uyumaya gider.'],
          ['10:40 ÖS', 'Robin\'le birlikte eve varır.'],
        ]),
        _buildScheduleTable('Düzenli Program', [
          ['7:50 ÖÖ', 'Evde, mutfaktaki lavabonun önünde durur.'],
          ['11:00 ÖÖ', 'Halkevi\'nin batısındaki fıskiyeye gider.'],
          ['7:00 ÖS', 'Eve döner ve mutfaktaki buzdolabının önünde durur.'],
          ['8:40 ÖS', 'Mutfakta ocak başında durur.'],
          ['9:00 ÖS', 'Yatak odasındaki kitaplığın yanında durur.'],
          ['10:30 ÖS', 'Yatağa gider.'],
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
        _buildScheduleTable('Yağmur', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda gazete okur.'],
          ['11:00 ÖS', 'Laboratuvarda mikroskop başında not tutar.'],
          ['3:00 ÖS', 'Marangoz Atölyesi\'nin girişindeki tezgahın arkasında durur.'],
          ['3:40 ÖS', 'Laboratuvardaki mikroskopun başına döner.'],
          ['6:00 ÖS', 'Mutfakta buzdolabının önünde durur.'],
          ['7:20 ÖS', 'Mutfakta ocak başında durur.'],
          ['8:00 ÖS', 'Yatak odasında kitaplığın yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Cuma', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda mikroskop başında not tutar.'],
          ['4:00 ÖS', 'Laboratuvardan çıkıp Salon\'a doğru gider.'],
          ['5:50 ÖS', 'Salon\'da, Robin\'in yanında durur.'],
          ['7:20 ÖS', 'Salon\'da, Robin ile dans eder.'],
          ['9:00 ÖS', 'Salon\'dan çıkıp eve uyumaya gider.'],
        ]),
        _buildScheduleTable('Düzenli Program', [
          ['7:50 ÖÖ', 'Evde, mutfaktaki lavabonun önünde durur.'],
          ['11:00 ÖÖ', 'Evden çıkar, gölün kuzey ucuna not tutmaya gider.'],
          ['7:00 ÖS', 'Eve döner ve mutfaktaki buzdolabının önünde durur.'],
          ['8:40 ÖS', 'Mutfakta ocak başında durur.'],
          ['9:00 ÖS', 'Yatak odasındaki kitaplığın yanında durur.'],
          ['10:30 ÖS', 'Yatağa gider.'],
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
        _buildScheduleTable('Kış - 16', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda gazete okur.'],
          ['11:00 ÖS', 'Laboratuvarda mikroskop başında not tutar.'],
          ['3:00 ÖS', 'Marangoz Atölyesi\'nin girişindeki tezgahın arkasında durur.'],
          ['3:40 ÖS', 'Akşam Pazarı\'na gitmek için evden çıkar.'],
          ['23:30 ÖS', 'Eve dönmek için Akşam Pazarı\'ndan çıkar.'],
        ]),
        _buildScheduleTable('Yağmur', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda gazete okur.'],
          ['11:00 ÖS', 'Laboratuvarda mikroskop başında not tutar.'],
          ['3:00 ÖS', 'Marangoz Atölyesi\'nin girişindeki tezgahın arkasında durur.'],
          ['3:40 ÖS', 'Laboratuvardaki mikroskopun başına döner.'],
          ['6:00 ÖS', 'Mutfakta buzdolabının önünde durur.'],
          ['7:20 ÖS', 'Mutfakta ocak başında durur.'],
          ['8:00 ÖS', 'Yatak odasında kitaplığın yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Cuma', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda mikroskop başında not tutar.'],
          ['4:00 ÖS', 'Laboratuvardan çıkıp Salon\'a doğru gider.'],
          ['5:50 ÖS', 'Salon\'da, Robin\'in yanında durur.'],
          ['7:20 ÖS', 'Salon\'da, Robin ile dans eder.'],
          ['9:00 ÖS', 'Salon\'dan çıkıp eve uyumaya gider.'],
        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['7:50 ÖÖ', 'Evde, laboratuvarda gazete okur.'],
          ['11:00 ÖÖ', 'Laboratuvarda mikroskop başında not tutar.'],
          ['3:00 ÖS', 'Marangoz Atölyesi\'nin girişindeki tezgahın arkasında durur.'],
          ['3:40 ÖS', 'Laboratuvarda mikroskop başına geri döner.'],
          ['6:00 ÖS', 'Mutfakta buzdolabının önünde durur.'],
          ['7:20 ÖS', 'Mutfakta ocak başında durur.'],
          ['8:00 ÖS', 'Yatak odasındaki kitaplığın yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],

        ]),
      ],
    );
  }

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
