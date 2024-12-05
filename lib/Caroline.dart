import 'package:flutter/material.dart';

class CarolinePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Caroline - Stardew Valley Wiki'),
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
                  SizedBox(height: 20),
                  _buildGreenRainSchedule(),
                  SizedBox(height: 20),
                  _buildRainSchedule(),
                  SizedBox(height: 20),
                  _buildTuesdaySchedule(),
                  SizedBox(height: 20),
                  _buildWednesdaySchedule(),
                  SizedBox(height: 20),
                  _buildFridaySchedule(),
                  SizedBox(height: 20),
                  _buildSaturdaySchedule(),
                  SizedBox(height: 20),
                  _buildSundaySchedule(),
                  SizedBox(height: 20),
                  _buildRegurarlySchedule(),
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
          'Caroline',
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
        'https://stardewvalleywiki.com/mediawiki/images/8/87/Caroline.png',
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
            'Doğum Günü: Kış 7',
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
                'Pierre (Kocası)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Image.network(
                'https://stardewvalleywiki.com/mediawiki/images/6/63/Abigail_Icon.png',
                width: 32,
                height: 32,
              ),
              SizedBox(width: 5),
              Text(
                'Abigail (Kızı)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Evlilik: Hayır',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
  Widget _buildRegurarlySchedule() {
    return ExpansionTile(
      title: Text(
        "Düzenli Program",
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
        _buildScheduleTable('Düzenli Program', [
          ['08.00 ÖS', 'Pierre\'in Bakkalı\'nın mutfağında bekler.'],
          ['10.00 ÖS', 'Kış bahçesinde, çay filizinin yanında bekler.'],
          ['12.00 ÖS', 'Kış bahçesinden çıkar ve koridora doğru ilerler.'],
          ['13.30 ÖÖ', 'Bakkaldan çıkar ve Kasaba meydanında Jodi ile buluşur.'],
          ['16.00 ÖÖ', 'Eve döner ve oturma odasında bekler.'],
          ['21.00 ÖS', 'Yatağa gider.'],

        ]),
      ],
    );
  }


  Widget _buildSpringSchedule() {
    return ExpansionTile(
      title: Text(
        "Bahar 15 (Otobüs Hizmeti Onarılmışsa)",
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
        _buildScheduleTable('Bahar 15 (Otobüs Hizmeti Onarılmışsa)', [
          ['10:40 ÖÖ', 'Çöl Şöleni\'ne katılmak için Patisko Çölü\'ne giden otobüse biner.'],
          ['11:00 ÖÖ', 'Kasabalı dükkanlarının doğusunda durur.'],
          ['00:50 ÖS', 'Vadi\'ye geri dönmek için otobüse biner.'],
        ]),

      ],
    );
  }

  Widget _buildSummerSchedule() {
    return ExpansionTile(
      title: Text(
        "Çöl Şöleni (Satıcı Olarak)",
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
        _buildScheduleTable('Çöl Şöleni (Satıcı Olarak)', [
          ['11:00 ÖÖ', 'Patisko Çölü\'ne gitmek için otobüse biner.'],
          ['11:30 ÖÖ', 'Standına varır.'],
          ['00:00 ÖS', 'Standından ayrılır ve Vadi\'ye dönen otobüse biner.'],
      ]),
      ],
    );
  }

  Widget _buildFallSchedule() {
    return ExpansionTile(
      title: Text(
        "Güz 25",
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
        _buildScheduleTable('Güz - 25', [
          ['8:00 ÖÖ', 'Pierre\'in Bakkalı\'nın mutfağında bekler.'],
          ['10:00 ÖÖ', 'Mutfaktan çıkar, yatak odasına gider.'],
          ['12:00 ÖS', 'Yatak odasından çıkar, Harvey\'nin Sağlık Ocağı\'nın bekleme odasına gider.'],
          ['13:30 ÖS', 'Harvey\'nin Sağlık Ocağı\'nın soldaki muayene odasına ilerler.'],
          ['16:00 ÖS', 'Eve döner, oturma odasında durur.'],
          ['21:00 ÖS', 'Yatağa gider.'],
        ]),
      ],
    );
  }

  Widget _buildWinterSchedule() {
    return ExpansionTile(
      title: Text(
        "Kış 16",
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
          ['8:00 ÖÖ', 'Pierre\'in Bakkalı\'nın mutfağında bekler.'],
          ['12:00 ÖS', 'Mutfaktan çıkar, bakkalın koridoruna yürür.'],
          ['13:30 ÖS', 'Bakkaldan çıkar ve Kasaba meydanına gider.'],
          ['16:00 ÖS', 'Kasabadan ayrılır ve Akşam Pazarı\'na gider.'],
          ['23:30 ÖS', 'Akşam Pazarı\'ndan ayrılır, eve döner ve uyur.'],
        ]),
      ],
    );
  }
  Widget _buildGreenRainSchedule() {
    return ExpansionTile(
      title: Text(
        "Yeşil Yağmur (Yıl 1)",
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
        _buildScheduleTable('Yeşil Yağmur (Yıl 1)', [
          ['Tüm Gün', 'Oturma Odasında bekler.'],
        ]),
      ],
    );
  }
  Widget _buildRainSchedule() {
    return ExpansionTile(
      title: Text(
        "Yağmur",
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
        _buildScheduleTable('Yağmur', [
          ['8:00 ÖÖ', 'Pierre\'in Bakkalı\'nın mutfağında bekler.'],
          ['12:00 ÖS', 'Mutfaktan çıkar, bakkalın koridoruna yürür.'],
          ['13:30 ÖS', 'Bakkaldan çıkar, kitap okumak için yatak odasına gider.'],
          ['16:00 ÖS', 'Yatak odasından çıkar, oturma odasına yürür.'],
          ['21:00 ÖS', 'Yatağa gider.'],
        ]),
      ],

    );

  }
  Widget _buildTuesdaySchedule() {
    return ExpansionTile(
      title: Text(
        "Salı",
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
        _buildScheduleTable('Salı', [
          ['08.00 ÖS', 'Oturma odasında, en üstteki şifonyerin yakınında bekler.'],
          ['10.30 ÖS', 'Oturma odasının ortasına doğru ilerler.'],
          ['13.00 ÖÖ', 'Aerobik dersi oturma odasında başlar.'],
          ['16.00 ÖS', 'Aerobik dersi biter, oturma odasında sohbet ederek bekler.'],
          ['18.10 ÖS', 'Mutfağa yürür ve birkaç kurabiye yer.'],
          ['21.00 ÖS', 'Yatağa gider.'],

        ]),
      ],
    );
  }
  Widget _buildWednesdaySchedule() {
    return ExpansionTile(
      title: Text(
        "Çarşamba",
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
        _buildScheduleTable('Çarşamba', [
          ['08.00 ÖS', 'Pierre\'in Bakkalı\'nın mutfağında bekler.'],
          ['10.00 ÖS', 'Kış bahçesinde, çay filizinin yanında bekler.'],
          ['12.00 ÖÖ', 'Halkevi\'nin solundaki süs çeşmesine gitmek için evden çıkar.'],
          ['17.00 ÖS', 'Eve döner, oturma odasında durur.'],
          ['21.00 ÖS', 'Yatağa gider.'],

        ]),
      ],
    );
  }
  Widget _buildFridaySchedule() {
    return ExpansionTile(
      title: Text(
        "Cuma",
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
        _buildScheduleTable('Cuma', [
          ['08.00 ÖS', 'Pierre\'in Bakkalı\'nın mutfağında bekler.'],
          ['10.00 ÖS', 'Kış bahçesinde, çay filizinin yanında bekler.'],
          ['12.00 ÖÖ', 'Evden çıkar ve kitap okumak için Müze\'ye gider.'],
          ['17.00 ÖS', 'Eve döner, oturma odasında durur.'],
          ['21.00 ÖS', 'Yatağa gider.'],

        ]),
      ],
    );
  }
  Widget _buildSaturdaySchedule() {
    return ExpansionTile(
      title: Text(
        "Cumartesi (Halkevi Tamamlanmışsa)",
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
        _buildScheduleTable('Cumartesi (Halkevi Tamamlanmışsa', [
          ['08.00 ÖS', 'Pierre\'in Bakkalı\'nın mutfağında bekler.'],
          ['11.00 ÖS', 'Evden çıkar, Halkevi\'ne yürür, ana salonun okuma alanında durur.'],
          ['17.00 ÖS', 'Eve döner, oturma odasında durur.'],
          ['21.00 ÖS', 'Yatağa gider.'],

        ]),
      ],
    );
  }
  Widget _buildSundaySchedule() {
    return ExpansionTile(
      title: Text(
        "Pazar",
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
        _buildScheduleTable('Pazar', [
          ['09.00 ÖS', 'Yatak odasında bekler.'],
          ['10.40 ÖS', 'Odasındaki kitaplığın önüne yürür.'],
          ['13.30 ÖÖ', 'Bakkalın koridoruna doğru yürür.'],
          ['14.40 ÖÖ', 'Halkevi\'nin güneyindeki ağacın altında durmak için evden çıkar.'],
          ['18.30 ÖS', 'Eve döner, yatak odasında durur.'],
          ['21.00 ÖS', 'Yatağa gider.'],

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
