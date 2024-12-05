import 'package:flutter/material.dart';

class BuyucuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Büyücü - Stardew Valley Wiki'),
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
          'Büyücü',
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
        'https://stardewvalleywiki.com/mediawiki/images/c/c7/Wizard.png',
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
            'Doğum Günü: Kış 17',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Yaşadığı Yer: Kömürözü Ormanı',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            'Adres: Büyücü\'nün Kulesi',
            style: TextStyle(fontSize: 16, color: Colors.black),
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

  Widget _buildSpringSchedule() {
    return ExpansionTile(
      title: Text(
        "Günlük Program",
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
        _buildScheduleTable('Günlük Program', [
          ['𓇼', 'Büyücü Kulesi\'nden ayrılmaz(bazı Festival günleri dışında) ve kuleye erişebildiğiniz vakitlerde orada durur (06.00 - 23.00).'],
          ['𓇼', 'Oyuncu Cadı\'nın Barakası\'nı açınca saat 23.00 sonrasında ışınlanma totemi ile Cadı\'nın Barakası\'ndan Büyücü Kulesi\'ne giderek onunla görüşebilir. '],
          ['𓇼', 'Büyücü Zencefil Adası\'ndaki plaj tatil yerine asla gitmez.'],
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
