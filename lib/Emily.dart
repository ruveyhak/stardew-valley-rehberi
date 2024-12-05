import 'package:flutter/material.dart';

class EmilyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Emily - Stardew Valley Wiki'),
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
          'Emily',
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
        'https://stardewvalleywiki.com/mediawiki/images/0/04/Emily.png',
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
            'Doğum Günü: Kış 11',
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
                'https://stardewvalleywiki.com/mediawiki/images/a/ad/Haley_Icon.png',
                width: 32,
                height: 32,
              ),
              SizedBox(width: 5),
              Text(
                'Haley (Kız Kardeşi)',
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
        _buildScheduleTable('Çöl Şöleni (Tezgâhtar)', [
          ['11:10 ÖÖ', 'Çöl Şöleni için otobüsle Patisko Çölü\'ne gider.'],
          ['11:30 ÖÖ', 'Dükkânına varır.'],
          ['00:00 ÖS', 'Dükkândan ayrılır ve otobüsle vadiye döner.'],

        ]),
        _buildScheduleTable('Güz 15 (Otobüs Servisi Restore Edilmişse)', [
          ['9:00 ÖÖ', 'Çöl Şöleni için otobüsle Patisko Çölüne gider.'],
          ['10:30 ÖÖ', 'Patisko Çölüne gidip doğum gününde Sandy\'yi ziyaret etmek için evden ayrılır.'],
          ['00:00 ÖS', 'Geç olduğu için eve döner.'],

        ]),
        _buildScheduleTable('Kış 11', [
          ['9:00 ÖÖ', 'Yatak odasında.'],
          ['10:30 ÖÖ', 'Harvey\'nin Sağlık Ocağına gitmek için evden ayrılır, bekleme odasında bekler.'],
          ['1:30 ÖS', 'Muayene odasına gider.'],
          ['4:00 ÖS', 'Salonda çalışmak için sağlık ocağından ayrılır.'],
          ['00:30 ÖS', 'Geç olduğu için eve döner.'],
        ]),
        _buildScheduleTable('Kış 15', [
          ['9:00 ÖÖ', 'Yatak odasında.'],
          ['12:00 ÖÖ', 'Yatak odasından oturma odasına geçer.'],
          ['2:30 ÖS', 'Akşam Pazarı için evden ayrılır.'],
          ['00:30 ÖS', 'Geç olduğu için eve döner.'],
        ]),
        _buildScheduleTable('Yeşil Yağmur (1. Yıl)', [
          ['Tüm Gün', 'Yıldızkaydı Salonunda'],
        ]),
        _buildScheduleTable('Yağmurlu Gün', [
          ['9:00 ÖÖ', 'Yatak odasında.'],
          ['12:00 ÖÖ', 'Yatak odasından oturma odasına geçer.'],
          ['3:30 ÖS', 'Salon\'da çalışmak için evden ayrılır.'],
          ['00:30 ÖS', 'Geç olduğu için eve döner.'],
        ]),
        _buildScheduleTable('Salı', [
          ['9:00 ÖÖ', 'Yatak odasında.'],
          ['10:00 ÖÖ', 'Pierre\'in Bakkalındaki aerobik dersi için evden ayrılır.'],
          ['1:00 ÖS', 'Aerobik dersi başlar.'],
          ['4:00 ÖS', 'Pierre\'in yanından ayrılıp çalışmak için Yıldızkaydı Salonuna gider.'],
          ['00:30 ÖS', 'Geç olduğu için eve döner.'],
        ]),
        _buildScheduleTable('Cuma (Halkevi Restore Edilmişse)', [
          ['9:00 ÖÖ', 'Yatak odasında.'],
          ['10:00 ÖÖ', 'Halkevine gidip zanaat odasında geçer.'],
          ['3:30 ÖS', 'Yıldızkaydı Salonunda çalışmak için halkevinden ayrılır.'],
          ['00:30 ÖS', 'Geç olduğu için eve döner.'],
        ]),
        _buildScheduleTable('Düzenli Takvim', [
          ['9:00 ÖÖ', 'Yatak odasında.'],
          ['12:00 ÖÖ', 'Yatak odasından oturma odasına geçer.'],
          ['3:30 ÖS', 'Yıldızkaydı Salonunda çalışmak için evden ayrılır.'],
          ['00:30 ÖS', 'Geç olduğu için eve döner.'],
        ]),
      ],
    );
  }

  /* emily evlilik barı olultur evlilik kısmı cok uzun */

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
