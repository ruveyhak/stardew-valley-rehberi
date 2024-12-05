import 'package:flutter/material.dart';

class AbigailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Abigail - Stardew Valley Wiki'),
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
          'Abigail',
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
        'https://stardewvalleywiki.com/mediawiki/images/8/88/Abigail.png',
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
            'Doğum Günü: Gün 13',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Yaşadığı Yer: Pelikan Kasabası',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Adres: Pierre\'in Bakkalı',
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
                'https://stardewvalleywiki.com/mediawiki/images/c/cf/Pierre_Icon.png',
                width: 32,
                height: 32,
              ),
              SizedBox(width: 5),
              Text(
                'Pierre (Baba)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Image.network(
                'https://stardewvalleywiki.com/mediawiki/images/d/d4/Caroline_Icon.png',
                width: 32,
                height: 32,
              ),
              SizedBox(width: 5),
              Text(
                'Caroline (Anne)',
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
        _buildScheduleTable('Bahar - 4', [
          ['9:00 ÖÖ', 'Odasında.'],
          ['12:30 ÖS', 'Yıllık muayenesi için sağlık ocağına gitmek üzere odasından ayrılır.'],
          ['13:30 ÖS', 'Bekleme odasından ayrılır ve muayene odasına girer.'],
          ['8:00 ÖS', 'Sağlık ocağını terk eder ve evine, odasına geri döner.'],
          ['20:00 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Pazartesi, Salı, Perşembe ve Cumartesi', [
          ['9:00 ÖÖ', 'Odasından ayrılıp mutfağa gider.'],
          ['10:30 ÖS', 'Mutfaktan ayrılıp Pierre\'in Bakkalı\'nda durur.'],
          ['13:00 ÖS', 'Evden ayrılıp JojaMart\'ın yanındaki köprüye gider.'],
          ['13:30 ÖS', 'JojaMart\'ın yanındaki köprüde durur.'],
          ['16:30 ÖS', 'Eve döner.'],
          ['17:20 ÖS', 'Odasında video oyunu oynar.'],
          ['19:30 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Çarşamba', [
          ['10:00 ÖÖ', 'Evden ayrılıp Müzeye gider.'],
          ['12:00 ÖS', 'Müzedeki kütüphanede kitapları inceler.'],
          ['18:00 ÖS', 'Mezarlığa doğru yürür.'],
          ['19:00 ÖS', 'Mona\'nın mezarı önünde durur.'],
          ['22:00 ÖS', 'Eve ilerler.'],
          ['22:40 ÖS', 'Eve varır.'],
        ]),
        _buildScheduleTable('Cuma', [
          ['09:00 ÖÖ', 'Odasından ayrılıp mutfağa gider.'],
          ['11:00 ÖÖ', 'Mutfaktan ayrılıp Pierre\'in Bakkalı\'nda durur.'],
          ['15:00 ÖS', 'Evden ayrılıp Yıldızkaydı Salonu\'na gider.'],
          ['15:50 ÖS', 'Yıldızkaydı Salonu\'nda, atari makinelerinin yanındaki koltukta oturur.'],
          ['21:00 ÖS', 'Eve ilerler.'],
          ['22:40 ÖS', 'Eve varır.'],
        ]),
        _buildScheduleTable('Pazar', [
          ['09:00 ÖÖ', 'Odasında.'],
          ['10:30 ÖÖ', 'Odasından ayrılıp Caroline ve Pierre\'in odasına gider.'],
          ['13:00 ÖS', 'Evden ayrılıp Büyücü\'nün Kulesi\'ne gider.'],
          ['16:00 ÖS', 'Kömürözü Ormanı\'ndaki Büyücü\'nün Kulesi\'nin yakınında zaman geçirir.'],
          ['20:00 ÖS', 'Eve ilerler.'],
          ['22:30 ÖS', 'Eve varır.'],
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
        _buildScheduleTable('Yaz - Pazartesi,Salı,Perşembe ve Cumartesi', [
          ['9:00 ÖÖ', 'Odasından ayrılıp mutfağa gider.'],
          ['11:00 ÖÖ', 'Evden ayrılıp tren istasyonuna doğru yürür.'],
          ['13:00 ÖS', 'Tren istasyonunun önünde bekler.'],
          ['14:00 ÖS', 'Marangoz atölyesinin doğusundaki göle doğru yürür.'],
          ['15:00 ÖS', 'Dağda, marangoz atölyesinin doğusunda ki gölün yanında duruyor.'],
          ['17:30 ÖS', 'Eve ilerler.'],
          ['19:30 ÖS', 'Eve varır.'],
          ['20:00 ÖS', 'Video oyunu oynar.'],
          ['20:10 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Çarşamba', [
          ['10:00 ÖÖ', 'Evden ayrılıp kütüphaneye gider.'],
          ['12:00 ÖS', 'Kütüphanede kitaplara bakar.'],
          ['18:00 ÖS', 'Mezarlığa yürür.'],
          ['19:00 ÖS', 'Mona\'nın mezarının önünde durur.'],
          ['22:00 ÖS', 'Eve ilerler'],
          ['22:40 ÖS', 'Eve varır.'],
        ]),
        _buildScheduleTable('Cuma', [
          ['9:00 ÖÖ', 'Odasından ayrılıp mutfağa gider.'],
          ['11:00 ÖÖ', 'Mutfaktan ayrılıp Pierre\'in Bakkalı\'nda durur.'],
          ['15:ü0 ÖS', 'Evden ayrılıp Yıldızkaydı Salonu\'na gider.'],
          ['15:50 ÖS', 'Yıldızkaydı Salonu\'nda, atari makinelerinin yanındaki koltukta oturur.'],
          ['21:00 ÖS', 'Eve ilerler.'],
          ['21:40 ÖS', 'Eve varır.'],
        ]),
        _buildScheduleTable('Pazar', [
          ['10:30 ÖÖ', 'Odasından ayrılıp Caroline ve Pierre\'in odasına gider.'],
          ['13:00 ÖS', 'Evinden ayrılıp Büyücü\'nün Kulesi\'ne doğru yürür.'],
          ['16:ü0 ÖS', 'Kömürözü Ormanı\'ndaki Büyücü\'nün Kulesi yakınında zaman geçirir.'],
          ['20:00 ÖS', 'Eve ilerler.'],
          ['22:30 ÖS', 'Eve varır.'],
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
        _buildScheduleTable('Güz - Pazartesi', [
          ['9:00 ÖÖ', 'Odasında.'],
          ['11:00 ÖS', 'Evden ayrılıp kumsala gider.'],
          ['13:00 ÖS', 'Balıkçının solundaki uzun iskelenin sonunda durur.'],
          ['18:00 ÖS', 'Eve ilerler.'],
          ['19:30 ÖS', 'Eve varır ve yatağa gider.'],
        ]),
        _buildScheduleTable('Salı,Perşembe ve Cumartesi ', [
          ['9:00 ÖÖ', 'Odasından ayrılıp mutfağa gider.'],
          ['10:30 ÖÖ', 'Mutfaktan ayrılıp Pierre\'in Bakkalı\'nda durur.'],
          ['13:00 ÖS', 'Evinden ayrılıp otobüs durağına gider.'],
          ['14:20 ÖS', 'Otobüs durağında durur.'],
          ['17:00 ÖS', 'Eve ilerler.'],
          ['18:30 ÖS', 'Odasında video oyunları oynar.'],
          ['18:30 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Çarşamba', [
          ['10:30 ÖÖ', 'Evden ayrılıp kütüphaneye gider.'],
          ['12:00 ÖS', 'Kütüphanede kitaplara bakar.'],
          ['18:00 ÖS', 'Mezarlığa doğru yürür.'],
          ['19:00 ÖS', 'Mona\'nın mezarının önünde durur.'],
          ['22:00 ÖS', 'Eve ilerler'],
          ['22:40 ÖS', 'Eve varır.'],
        ]),
        _buildScheduleTable('Cuma', [
          ['09:00 ÖÖ', 'Odasından ayrılıp mutfağa gider.'],
          ['11:00 ÖS', 'Mutfaktan ayrılıp Pierre\'in Bakkalı\'nda durur.'],
          ['15:00 ÖS', 'Evden ayrılıp Yıldızkaydı Salonu\'na gider.'],
          ['15:50 ÖS', 'Yıldızkaydı Salonu\'nda, atari makinelerinin yanındaki koltukta oturur.'],
          ['21:00 ÖS', 'Eve ilerler'],
          ['21:40 ÖS', 'Eve varır.'],
        ]),
        _buildScheduleTable('Pazar', [
          ['09:00 ÖÖ', 'Odasında.'],
          ['10:30 ÖÖ', 'Odasından ayrılıp Caroline ve Pierre\'in odasına gider.'],
          ['13:00 ÖS', 'Evden ayrılıp Büyücü\'nün Kulesi\'ne gider.'],
          ['16:00 ÖS', 'Kömürözü Ormanı\'ndaki Büyücü\'nün Kulesi yakınında zaman geçirir.'],
          ['20:00 ÖS', 'Eve ilerler'],
          ['22:30 ÖS', 'Eve varır.'],
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
        _buildScheduleTable('Kış - 15', [
          ['9:00 ÖÖ', 'Odasından ayrılıp mutfağa gider.'],
          ['10:30 ÖÖ', 'Marangoz atölyesine yürür ve tezgahın yanında durur.'],
          ['14:30 ÖS', 'Akşam Pazarı için sahile ilerler.'],
          ['00:00 ÖS', 'Eve döner.'],
        ]),
        _buildScheduleTable('Pazartesi, Salı, Perşembe ve Cumartesi', [
          ['9:00 ÖÖ', 'Odasından ayrılıp mutfağa gider.'],
          ['10:30 ÖÖ', 'Marangoz atölyesine yürür ve tezgahın yanında durur.'],
          ['14:30 ÖS', 'Eve döner ve video oyunları oynar.'],
          ['19:30 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Çarşamba', [
          ['10:00 ÖÖ', 'Evden ayrılıp kütüphaneye gider.'],
          ['12:00 ÖS', 'Kütüphanede kitaplara bakar.'],
          ['18:00 ÖS', 'Mezarlığa doğru yürür.'],
          ['19:00 ÖS', 'Mona\'nın mezarının önünde durur.'],
          ['22:00 ÖS', 'Eve ilerler.'],
          ['22:40 ÖS', 'Eve varır.'],
        ]),
        _buildScheduleTable('Cuma', [
          ['09:00 ÖÖ', 'Odasından ayrılıp mutfağa gider.'],
          ['11:00 ÖÖ', 'Mutfaktan ayrılıp Pierre\'in Bakkalı\'nda durur.'],
          ['15:00 ÖS', 'Evden ayrılıp Yıldızkaydı Salonu\'na gider.'],
          ['15:50 ÖS', 'Yıldızkaydı Salonu\'nda, atari makinelerinin yanındaki koltukta oturur.'],
          ['21:00 ÖS', 'Eve ilerler.'],
          ['21:40 ÖS', 'Eve varır.'],
        ]),
        _buildScheduleTable('Pazar', [
          ['09:00 ÖÖ', 'Odasında.'],
          ['10:30 ÖÖ', 'Odasından ayrılıp Caroline ve Pierre\'in odasına gider.'],
          ['13:00 ÖS', 'Evden ayrılıp Büyücü\'nün Kulesi\'ne gider.'],
          ['16:00 ÖS', 'Kömürözü Ormanı\'ndaki Büyücü\'nün Kulesi yakınında zaman geçirir.'],
          ['20:00 ÖS', 'Eve ilerler.'],
          ['22:30 ÖS', 'Eve varır.'],
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

