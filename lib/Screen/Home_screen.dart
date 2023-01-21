import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Masakan',
      home: ShowDataTable(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShowDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Recipes'),
        ),
        body: SingleChildScrollView(
            child: DataTable(
          columns: [
            DataColumn(label: Text('No.')),
            DataColumn(label: Text('Food Name')),
            DataColumn(label: Text('Estimation')),
            DataColumn(label: Text('Likes')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1.')),
              DataCell(Text('Rendang')),
              DataCell(Text('4-5 Hours')),
              DataCell(Text('1592')),
            ]),
            DataRow(cells: [
              DataCell(Text('2.')),
              DataCell(Text('Sup Iga')),
              DataCell(Text('45 Minute')),
              DataCell(Text('1491')),
            ]),
            DataRow(cells: [
              DataCell(Text('3.')),
              DataCell(Text('Tumis Buncis udang')),
              DataCell(Text('30 Minute')),
              DataCell(Text('1258')),
            ]),
            DataRow(cells: [
              DataCell(Text('4.')),
              DataCell(Text('Sayur Asem')),
              DataCell(Text('20 Minute')),
              DataCell(Text('987')),
            ]),
            DataRow(cells: [
              DataCell(Text('5.')),
              DataCell(Text('Oseng Tempe Kacang')),
              DataCell(Text('25 Minute')),
              DataCell(Text('821')),
            ]),
            DataRow(cells: [
              DataCell(Text('6.')),
              DataCell(Text('Chiken Kriuk')),
              DataCell(Text('15 Minute')),
              DataCell(Text('802')),
            ]),
            DataRow(cells: [
              DataCell(Text('7.')),
              DataCell(Text('Tumis Tofu')),
              DataCell(Text('30 Minute')),
              DataCell(Text('791')),
            ]),
            DataRow(cells: [
              DataCell(Text('8.')),
              DataCell(Text('Tumis Jamur Sosis')),
              DataCell(Text('25 Minute')),
              DataCell(Text('631')),
            ]),
            DataRow(cells: [
              DataCell(Text('9.')),
              DataCell(Text('Telur Sambel')),
              DataCell(Text('10 Minute')),
              DataCell(Text('418')),
            ]),
            DataRow(cells: [
              DataCell(Text('10.')),
              DataCell(Text('Bening Bayam')),
              DataCell(Text('25 Minute')),
              DataCell(Text('416')),
            ]),
          ],
        )));
  }
}
