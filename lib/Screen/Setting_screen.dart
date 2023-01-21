import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});

  List bulan = [
    'Sup Oyong Udang',
    'Ayam Rica',
    'Pangsit Ayam',
    'Ayam Pedas',
    'Kwetiau Goreng',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'listView Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter ListView'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => Container(
            height: 64,
            margin: EdgeInsets.only(left: 10, right: 20, bottom: 10),
            child: Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bulan[index],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          itemCount: bulan.length,
          separatorBuilder: (context, index) => Divider(
            color: Colors.black38,
          ),
        ),
      ),
    );
  }
}
