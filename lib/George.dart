import 'package:flutter/material.dart';

class GeorgePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('George - Stardew Valley Wiki'),
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
          'George',
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
        'https://stardewvalleywiki.com/mediawiki/images/0/04/George.png',
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
            'Doğum Günü: Güz 24',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Yaşadığı Yer: Pelikan Kasabası',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Adres: Irmak Sokağı, No: 1',
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
                'Alex (Torunu)',
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
                'Evelyn (Karısı)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
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
        _buildScheduleTable('Kış 17', [
          ['6:30 ÖÖ', 'Evde televizyon izler.'],
          ['12:00 ÖS', 'Mutfak masasında.'],
          ['4:20 ÖS', 'Akşam pazarına katılmak için evden ayrılır.'],
          ['11:40 ÖS', 'Akşam pazarından ayrılır ve eve döner.'],
        ]),
        _buildScheduleTable('23. Salı (Tüm Mevsimler)', [
          ['6:30 ÖÖ', 'Evde, mutfak masasında.'],
          ['10:30 ÖS', 'Evden ayrılır ve Harvey\'in Sağlık Ocağındaki bekleme odasına gider.'],
          ['1:30 ÖS', 'Sağlık ocağındaki muayene odasına gider.'],
          ['4:00 ÖS', 'Sağlık ocağından ayrılır ve eve gidip televizyon izler.'],
          ['8:00 ÖS', 'Gece olduğu için yatak odasına gider.'],
        ]),
        _buildScheduleTable('Yağmur', [
          ['6:30 ÖÖ', 'Evde televizyon izler.'],
          ['12:00 ÖS', 'Mutfak masasında.'],
          ['13:00 ÖS', 'Tekrar televizyon izlemeye gider.'],
          ['8:00 ÖS', 'Gece olduğu için yatak odasına gider.'],
        ]),
        _buildScheduleTable('Yaz - Cuma', [
          ['6:30 ÖÖ', 'Evde televizyon izler.'],
          ['12:00 ÖS', 'Evin solundaki ağacın önünde durmak için evden ayrılır.'],
          ['13:00 ÖS', 'Tekrar televizyon izlemek için eve geri döner.'],
          ['8:00 ÖS', 'Gece olduğu için yatak odasına gider.'],
        ]),
        _buildScheduleTable('Pazar - Alex\'in 14 kalp olayı görülmüşse', [
          ['6:30 ÖÖ', 'Evde televizyon izler.'],
          ['11:00 ÖÖ', 'Salonun arkasındaki odaya, maç izlemeye gider.'],
          ['13:00 ÖS', 'Tekrar televizyon izlemek için eve geri döner.'],
          ['8:00 ÖS', 'Gece olduğu için yatak odasına gider.'],
        ]),
        _buildScheduleTable('Pazar', [
          ['6:30 ÖÖ', 'Evde televizyon izler.'],
          ['11:00 ÖÖ', 'Pierre\'in evindeki Yoba sunağına gitmek için evden ayrılır.'],
          ['13:00 ÖS', 'Yoba sunağından ayrılır ve eve gidip televizyon izler.'],
          ['8:00 ÖS', 'Gece olduğu için yatak odasına gider.'],
        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['6:30 ÖÖ', 'Evde televizyon izler.'],
          ['12:00 ÖS', 'Mutfak masasında.'],
          ['1:00 ÖS', 'Tekrar televizyon izlemek için eve geri döner.'],
          ['8:00 ÖS', 'Gece olduğu için yatak odasına gider.'],
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
        _buildScheduleTable('Yaz - 16. Salı', [
          ['8:00 ÖÖ', 'Dışarı çıkıp yakındaki ağacın altında durmak için odasından ayrılır.'],
          ['10:30 ÖS', 'Kliniğe gider.'],
          ['11:00 ÖS', 'Klinik bekleme odasında.'],
          ['1:40 ÖS', 'Klinik muayene odasında.'],
          ['4:00 ÖS', 'Eve gider.'],
          ['4:50 ÖS', 'Odasında bekler.'],
        ]),
        _buildScheduleTable('Yağmurlu Gün', [
          ['8:00 ÖÖ', 'Odasından ayrılır ve girişte durur.'],
          ['1:00 ÖS', 'Ağırlık kaldırmak için odasına döner.'],
          ['4:00 ÖS', 'Köpek kulübesinin yanında durmak için evinden ayrılır.'],
          ['6:30 ÖS', 'Evine geri döner ve girişte durur.'],
          ['8:00 ÖS', 'Odasına gider ve şifonyerinin yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['8:00 ÖÖ', 'Odasından ayrılır ve yakınındaki ağacın altında durur.'],
          ['1:00 ÖS', 'Odasına geri dönmek için ağacın yanından ayrılır.'],
          ['1:20 ÖS', 'Ağırlık kaldırmak için odasına gider.'],
          ['4:00 ÖS', 'Köpek kulübesinin yanında durmak için odasından ayrılır.'],
          ['6:30 ÖS', 'Evine geri döner ve girişte durur.'],
          ['8:00 ÖS', 'Odasına gider ve şifonyerinin yanında durur.'],
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
        _buildScheduleTable('Güz - 23. Çarşamba', [
          ['8:00 ÖÖ', 'Odasından ayrılır ve girişte durur.'],
          ['9:00 ÖS', 'Müzesine gider.'],
          ['9:20 ÖS', 'Müzede bekler.'],
          ['1:00 ÖS', 'Müzeden ayrılır.'],
          ['3:00 ÖS', 'Eve döner.'],
          ['4:00 ÖS', 'Köpek kulübesine gider.'],
          ['6:00 ÖS', 'Evine geri döner.'],
          ['8:00 ÖS', 'Odasına gider ve yatağa gider.'],
        ]),
        _buildScheduleTable('Yağmurlu Gün', [
          ['8:00 ÖÖ', 'Odasından ayrılır ve girişte durur.'],
          ['1:00 ÖS', 'Ağırlık kaldırmak için odasına döner.'],
          ['4:00 ÖS', 'Köpek kulübesinin yanında durmak için evinden ayrılır.'],
          ['6:30 ÖS', 'Evine geri döner ve girişte durur.'],
          ['8:00 ÖS', 'Odasına gider ve şifonyerinin yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['8:00 ÖÖ', 'Odasından ayrılır ve yakınındaki ağacın altında durur.'],
          ['1:00 ÖS', 'Odasına geri dönmek için ağacın yanından ayrılır.'],
          ['1:20 ÖS', 'Ağırlık kaldırmak için odasına gider.'],
          ['4:00 ÖS', 'Köpek kulübesinin yanında durmak için odasından ayrılır.'],
          ['6:30 ÖS', 'Evine geri döner ve girişte durur.'],
          ['8:00 ÖS', 'Odasına gider ve şifonyerinin yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],
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
        _buildScheduleTable('Kış - 15. Perşembe', [
          ['8:00 ÖÖ', 'Dışarı çıkıp yakındaki ağacın altında durmak için odasından ayrılır.'],
          ['10:00 ÖS', 'Müzesine gider.'],
          ['10:20 ÖS', 'Müzede bekler.'],
          ['1:30 ÖS', 'Müzeden ayrılır.'],
          ['3:00 ÖS', 'Eve döner.'],
          ['4:00 ÖS', 'Köpek kulübesine gider.'],
          ['6:00 ÖS', 'Evine geri döner.'],
          ['8:00 ÖS', 'Odasına gider ve yatağa gider.'],
        ]),
        _buildScheduleTable('Yağmurlu Gün', [
          ['8:00 ÖÖ', 'Odasından ayrılır ve girişte durur.'],
          ['1:00 ÖS', 'Ağırlık kaldırmak için odasına döner.'],
          ['4:00 ÖS', 'Köpek kulübesinin yanında durmak için evinden ayrılır.'],
          ['6:30 ÖS', 'Evine geri döner ve girişte durur.'],
          ['8:00 ÖS', 'Odasına gider ve şifonyerinin yanında durur.'],
          ['10:00 ÖS', 'Yatağa gider.'],
        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['8:00 ÖÖ', 'Odasından ayrılır ve yakınındaki ağacın altında durur.'],
          ['1:00 ÖS', 'Odasına geri dönmek için ağacın yanından ayrılır.'],
          ['1:20 ÖS', 'Ağırlık kaldırmak için odasına gider.'],
          ['4:00 ÖS', 'Köpek kulübesinin yanında durmak için odasından ayrılır.'],
          ['6:30 ÖS', 'Evine geri döner ve girişte durur.'],
          ['8:00 ÖS', 'Odasına gider ve şifonyerinin yanında durur.'],
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
