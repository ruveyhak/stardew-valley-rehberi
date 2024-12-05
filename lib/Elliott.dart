import 'package:flutter/material.dart';

class ElliottPage extends StatelessWidget {

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Elliott - Stardew Valley Wiki'),
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
          'Elliott',
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
        'https://stardewvalleywiki.com/mediawiki/images/0/04/Elliott.png',
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
            'Doğum Günü: Güz 5',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Yaşadığı Yer: Kumsal',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Adres: Elliott\'ın Barakası',
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
        _buildScheduleTable('Bahar - Yağmurlu Gün', [
          ['Tüm Gün', 'Tüm gün evin içinde durur.'],
        ]),
        _buildScheduleTable('Salı', [
          ['12:00 ÖS', 'Elliott evinden ayrılır ve kulübenin önünde durur.'],
          ['1:30 ÖS', 'Eve döner.'],
          ['3:00 ÖS', 'Evden çıkar ve plaj girişinin önündeki köprülere yönelir.'],
          ['6:00 ÖS', 'Eve geri döner.'],
          ['6:20 ÖS', 'Eve girer.'],
        ]),
        _buildScheduleTable('Perşembe, Cuma - Oyuncunun Leah ile 6+ kalbi varsa', [
          ['8:00 ÖÖ', 'Evinde.'],
          ['11:30 ÖÖ', 'Evden ayrılır ve Pierre\'in Bakkalı\'na gider.'],
          ['5:30 ÖS', 'Pierre\'den ayrılır ve gece için eve gider.'],
        ]),
        _buildScheduleTable('Cuma ve Pazar - Oyuncunun Leah ile 6\'dan az kalbi varsa', [
          ['8:00 ÖÖ', 'Evinde.'],
          ['11:00 ÖÖ', 'Willy\'nin evinin yanındaki rıhtımda durmak için evinden ayrılır.'],
          ['5:00 ÖS', 'Yıldız Kaydı salonunu ziyaret etmek için limandan ayrılır.'],
          ['11:40 ÖS', 'Eve geri döner.'],
        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['8:00 ÖÖ', 'Evinde.'],
          ['12:00 ÖS', 'Barakasından ayrılır ve sahilde gezinir.'],
          ['1:30 ÖS', 'Barakasına döner.'],
          ['3:00 ÖS', 'Barakasından ayrılır ve sahile giden kuzey köprüde durur.'],
          ['6:00 ÖS', 'Köprüden ayrılır ve barakasına döner.'],

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
        _buildScheduleTable('Yaz - 9. Salı', [
          ['10:30 ÖÖ', 'Evinden ayrılır ve kliniğe gider.'],
          ['1:30 ÖS', 'Klinikte bekleme odasından muayene odasına geçer.'],
          ['4:00 ÖS', 'Klinikten çıkar ve geceyi geçirmek üzere evine döner.'],
        ]),
        _buildScheduleTable('Perşembe, Cuma - Oyuncunun Leah ile 6+ kalbi varsa', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:30 ÖÖ', 'Evden çıkar ve Pierre\'in Bakkalı\'na gider.'],
          ['5:30 ÖS', 'Pierre\'in Bakkalı\'ndan çıkar ve geceyi geçirmek üzere evine döner.'],
        ]),
        _buildScheduleTable('Cuma ve Pazar - Oyuncunun Leah ile 6\'dan az kalbi varsa', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:00 ÖÖ', 'Kabininden çıkar ve Willy\'nin evinin yanındaki iskelede durur.'],
          ['5:00 ÖS', 'İskeleden ayrılır ve Stardrop Bar\'a gider.'],
          ['11:40 ÖS', 'Bar\'dan ayrılır ve geceyi geçirmek üzere evine döner.'],

        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:30 ÖÖ', 'Evden çıkar ve Leah\'nın Kulübesi\'nin güneyindeki ormana gider.'],
          ['6:00 ÖS', 'Ormandan çıkar ve geceyi geçirmek üzere evine döner.'],
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
        _buildScheduleTable('Yağmurlu Gün', [
          ['Tüm Gün', 'Evinde.'],
        ]),
        _buildScheduleTable('Perşembe, Cuma - Oyuncunun Leah ile 6+ kalbi varsa', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:30 ÖÖ', 'Evden çıkar ve Pierre\'in Bakkalı\'na gider.'],
          ['5:30 ÖS', 'Pierre\'in Bakkalı\'ndan çıkar ve geceyi geçirmek üzere evine döner.'],

        ]),
        _buildScheduleTable('Cuma ve Pazar - Oyuncunun Leah ile 6\'dan az kalbi varsa', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:00 ÖÖ', 'Kabininden çıkar ve Willy\'nin evinin yanındaki iskelede durur.'],
          ['5:00 ÖS', ' İskeleden ayrılır ve Yıldızkaydı Salonuna gider.'],
          ['11:40 ÖS', 'Bar\'dan ayrılır ve geceyi geçirmek üzere evine döner.'],

        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:30 ÖÖ', 'Evden çıkar ve Kütüphaneye gider.'],
          ['5:30 ÖS', 'Kütüphaneden çıkar ve geceyi geçirmek üzere evine döner.'],

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
        _buildScheduleTable('Yağmurlu Gün', [
          ['Tüm Gün', 'Evinde.'],
        ]),
        _buildScheduleTable('17. Çarşamba', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:30 ÖÖ', 'Evden çıkar ve Müzeye gider.'],
          ['4:50 ÖS', 'Müzeden ayrılır ve Gece Pazarı\'na katılır.'],
          ['1:00 ÖÖ', 'Gece Pazarı\'ndan ayrılır ve kabinine döner.'],
        ]),
        _buildScheduleTable('Perşembe, Cuma - Oyuncunun Leah ile 6+ kalbi varsa', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:30 ÖÖ', 'Evden çıkar ve Pierre\'in Bakkalına gider.'],
          ['5:30 ÖS', ' Pierre\'in Bakkalından çıkar ve geceyi geçirmek üzere evine döner.'],
        ]),
        _buildScheduleTable('Perşembe, Cuma - Oyuncunun Leah ile 6\'dan az kalbi varsa', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:00 ÖÖ', 'Kabininden çıkar ve Willy\'nin evinin yanındaki iskelede durur.'],
          ['5:00 ÖS', 'İskeleden ayrılır ve Yıldızkaydı Salonuna gider.'],
          ['11:40 ÖS', 'Salondan ayrılır ve geceyi geçirmek üzere evine döner.'],
        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['8:00 ÖÖ', 'Evde.'],
          ['11:30 ÖÖ', 'Evden çıkar ve Kütüphane\'ye gider.'],
          ['5:30 ÖS', 'Kütüphane\'den çıkar ve geceyi geçirmek üzere evine döner.'],
        ]),
      ],
    );
  }

  /* Elliot için evlilik barı olusturr !!!!
 *Evlilik
Monday

Time	Location
8:30 am	Leaves the Farmhouse and heads to the beach
5:00 pm	Leaves the beach and heads home to the farm

  *  */

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
