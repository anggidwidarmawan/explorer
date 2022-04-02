import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    "Kota Semarang",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Text(
                  'Semarang,Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red[800],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              '500',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );

    Color warna = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(warna, Icons.call, 'CALL'),
        _buildButtonColumn(warna, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(warna, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Semarang ialah ibu kota Provinsi Jawa Tengah, Indonesia. Kota ini terletak sekitar 485 kilometer di sebelah timur Jakarta, dan 308 kilometer di sebelah barat Surabaya. Semarang menyempadani Laut Jawa di utara, Kabupaten Demak di timur, Kabupaten Semarang di selatan, dan Kabupaten Kendal di barat.',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kota Semarang',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text('Kota Semarang'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/semarang.jpg',
              width: 700,
              height: 200,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color warna, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: warna),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: warna,
            ),
          ),
        ),
      ],
    );
  }
}
