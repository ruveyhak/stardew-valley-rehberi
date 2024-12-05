import 'package:flutter/material.dart';

class HarveyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Harvey - Stardew Valley Wiki'),
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
          'Harvey',
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
        'https://stardewvalleywiki.com/mediawiki/images/9/95/Harvey.png',
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
            'Doğum Günü: Kış 14',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Yaşadığı Yer: Pelikan Kasabası',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Adres: Sağlık Ocağı',
            style: TextStyle(fontSize: 16, color: Colors.black),
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
        _buildScheduleTable('Yağmurlu Gün', [
          ['8:00 ÖÖ', 'Odasında.'],
          ['8:40 ÖÖ', 'Sağlık Ocağı\'nın resepsiyonunda çalışır.'],
          ['12:00 ÖS', 'Üst kattaki odasına çıkar, radyonun önünde oturur.'],
          ['4:00 ÖS', 'Kitap okumak için kitaplığına gider.'],
          ['5:30 ÖS', 'Yıldızkaydı Salonu\'na gider.'],
          ['10:00 ÖS', 'Eve geri döner ve yatağa gider.'],
        ]),

        _buildScheduleTable('Salı & Perşembe', [
          ['7:30 ÖÖ', 'Sağlık ocağının muayene odasında.'],
          ['12:50 ÖS', 'Bekleme odasına geçer.'],
          ['1:30 ÖS', 'Muayene odasına geri döner.'],
          ['4:30 ÖS', 'Sağlık ocağının resepsiyonunda çalışır.'],
          ['6:00 ÖS', 'Üst kattaki odasına çıkar, kitaplığın önünde dikilir.'],
          ['11:00 ÖS', 'Yatağa gider.'],
        ]),

        _buildScheduleTable('Cuma', [
          ['7:00 ÖÖ', 'Odasındaki buzdolabının önünde dikilir.'],
          ['8:30 ÖÖ', 'Sağlık ocağının resepsiyonunda çalışır.'],
          ['12:00 ÖS', 'Pierre\'in Bakkalı\'na gider.'],
          ['3:00 ÖS', 'Sağlık ocağının üstündeki odasına gider.'],
          ['8:00 ÖS', 'Yatağa gider.'],
        ]),

        _buildScheduleTable('Cumartesi', [
          ['8:30 ÖÖ', 'Müzeye gitmek için evden çıkar.'],
          ['3:00 ÖS', 'Müzeden çıkar, sağlık ocağının üstündeki odasına geri döner.'],
        ]),

        _buildScheduleTable('Düzenli Takvim', [
          ['7:00 ÖÖ', 'Odasındaki buzdolabının önünde dikilir.'],
          ['8:30 ÖÖ', 'Sağlık ocağının resepsiyonunda çalışır.'],
          ['12:00 ÖS', 'Kasaba merkezinin solundaki parkta dolaşır.'],
          ['5:30 ÖS', 'Sağlık ocağına geri döner, resepsiyon masasının sağında dikilir.'],
          ['6:40 ÖS', 'Üst kattaki odasına çıkar, kitaplığın önünde dikilir.'],
          ['10:00 ÖS', 'Yatağa gider.'],
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
        // Schedule generation function
// Schedule data
    _buildScheduleTable('Yağmurlu Gün', [
      ['8:00 ÖÖ', 'Odasında.'],
      ['8:40 ÖÖ', 'Sağlık Ocağı\'nın resepsiyonunda çalışır.'],
      ['12:00 ÖS', 'Üst kattaki odasına çıkar, radyonun önünde oturur.'],
      ['4:00 ÖS', 'Kitap okumak için kitaplığına gider.'],
      ['5:30 ÖS', 'Yıldızkaydı Salonu\'na gider.'],
      ['10:00 ÖS', 'Eve geri döner ve yatağa gider.'],
    ]),

    _buildScheduleTable('Salı & Perşembe', [
      ['7:30 ÖÖ', 'Sağlık ocağının muayene odasında.'],
      ['12:50 ÖS', 'Bekleme odasına geçer.'],
      ['1:30 ÖS', 'Muayene odasına geri döner.'],
      ['4:30 ÖS', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['6:00 ÖS', 'Üst kattaki odasına çıkar, kitaplığın önünde dikilir.'],
      ['11:00 ÖS', 'Yatağa gider.'],
    ]),

    _buildScheduleTable('Cuma', [
      ['7:00 ÖÖ', 'Odasındaki buzdolabının önünde dikilir.'],
      ['8:30 ÖÖ', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['12:00 ÖS', 'Pierre\'in Bakkalı\'na gider.'],
      ['3:00 ÖS', 'Sağlık ocağının üstündeki odasına gider.'],
      ['8:00 ÖS', 'Yatağa gider.'],
    ]),

    _buildScheduleTable('Cumartesi', [
      ['8:30 ÖÖ', 'Müzeye gitmek için evden çıkar.'],
      ['3:00 ÖS', 'Müzeden çıkar, sağlık ocağının üstündeki odasına geri döner.'],
    ]),

    _buildScheduleTable('Düzenli Takvim', [
      ['7:00 ÖÖ', 'Odasındaki buzdolabının önünde dikilir.'],
      ['8:30 ÖÖ', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['12:00 ÖS', 'Kasaba merkezinin solundaki parkta dolaşır.'],
      ['5:30 ÖS', 'Sağlık ocağına geri döner, resepsiyon masasının sağında dikilir.'],
      ['6:40 ÖS', 'Üst kattaki odasına çıkar, kitaplığın önünde dikilir.'],
      ['10:00 ÖS', 'Yatağa gider.'],
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

// Yağmurlu Programı
    _buildScheduleTable('Yağmurlu Gün', [
      ['8:00', 'Odasında.'],
      ['8:40', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['12:00', 'Üst kattaki odasına çıkar, radyonun önünde oturur.'],
      ['16:00', 'Kitap okumak için kitaplığına gider.'],
      ['17:30', 'Yıldızkaydı Salonu\'na gider.'],
      ['22:00', 'Eve geri döner ve yatağa gider.']
    ]),

// Salı & Perşembe Programı
    _buildScheduleTable('Salı & Perşembe', [
      ['7:30', 'Sağlık ocağının muayene odasında.'],
      ['12:50', 'Bekleme odasına geçer.'],
      ['13:30', 'Muayene odasına geri döner.'],
      ['16:30', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['18:00', 'Üst kattaki odasına çıkar, kitaplığın önünde kitap okur.'],
      ['23:00', 'Yatağa gider.']
    ]),

// Cuma Programı
    _buildScheduleTable('Cuma', [
      ['7:00', 'Odasındaki buzdolabının önünde dikilir.'],
      ['8:30', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['12:00', 'Pierre\'in Bakkalı\'na gider.'],
      ['15:00', 'Sağlık ocağının üstündeki odasına gider.'],
      ['20:00', 'Yatağa gider.']
    ]),

// Cumartesi Programı
    _buildScheduleTable('Cumartesi', [
      ['8:30', 'Müzeye gitmek için evden çıkar.'],
      ['15:00', 'Müzeden çıkar, sağlık ocağının üstündeki odasına geri döner.']
    ]),

// Normal Program
    _buildScheduleTable('Düzenli Takvim', [
      ['7:00', 'Odasındaki buzdolabının önünde dikilir.'],
      ['8:30', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['12:00', 'Kasabada yürür, sahile giden köprünün solundaki ağacın yanında dikilir.'],
      ['17:00', 'Geri döner, radyonun önünde oturur.'],
      ['22:00', 'Yatağa gider.']
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
        _buildScheduleTable('Pazartesi, Kış 15', [
      ['8:00', 'Odasındaki mikrodalganın önünde dikilir.'],
      ['8:40', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['12:00', 'Üst kattaki odasına çıkar, radyonun önünde oturur.'],
      ['16:00', 'Odasındaki kitaplığa doğru gider.'],
      ['17:00', 'Akşam Pazarı\'na katılmak için sahile doğru yürür.'],
      ['00:00', 'Eve geri döner ve yatağa gider.']
    ]),

// Yağmurlu Programı
    _buildScheduleTable('Yağmurlu', [
      ['8:00', 'Odasında.'],
      ['8:40', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['12:00', 'Üst kattaki odasına çıkar, radyonun önünde oturur.'],
      ['16:00', 'Kitap okumak için kitaplığa gider.'],
      ['17:30', 'Yıldızkaydı Salonu\'na gider.'],
      ['22:00', 'Eve geri döner ve yatağa gider.']
    ]),

// Salı & Perşembe Programı
    _buildScheduleTable('Salı & Perşembe', [
      ['7:30', 'Sağlık ocağının muayene odasında.'],
      ['12:50', 'Bekleme odasına gider.'],
      ['13:30', 'Muayene odasına geri döner.'],
      ['16:30', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['18:00', 'Üst kattaki odasına çıkar, kitaplığın önünde kitap okur.'],
      ['23:00', 'Yatağa gider.']
    ]),

// Cuma Programı
    _buildScheduleTable('Cuma', [
      ['7:00', 'Odasındaki buzdolabının önünde dikilir.'],
      ['8:30', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['12:00', 'Pierre\'in Bakkalı\'na gider.'],
      ['15:00', 'Sağlık ocağının üst katındaki odasına döner.'],
      ['22:00', 'Yatağa gider.']
    ]),

// Cumartesi Programı
    _buildScheduleTable('Cumartesi', [
      ['8:30', 'Müzeye gitmek için evden çıkar.'],
      ['15:00', 'Müzeden çıkar, sağlık ocağının üstündeki odasına geri döner.']
    ]),

// Normal Program
    _buildScheduleTable('Düzenli Takvim', [
      ['8:00', 'Odasında.'],
      ['8:40', 'Sağlık ocağının resepsiyonunda çalışır.'],
      ['12:00', 'Üst kattaki odasına çıkar, radyonun önünde oturur.'],
      ['16:00', 'Kitap okumak için kitaplığa doğru gider.'],
      ['17:30', 'Yıldızkaydı Salonu\'na gider.'],
      ['22:00', 'Eve geri döner ve yatağa gider.']
    ]),
      ],
    );
  }


  /*  evlilik barı */

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
