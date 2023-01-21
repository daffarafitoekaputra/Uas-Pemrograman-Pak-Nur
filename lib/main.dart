import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_43a87006190318/Screen/Profile_screen.dart';
import 'package:uas_43a87006190318/Screen/home_screen.dart';
import 'package:uas_43a87006190318/Screen/setting_screen.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<Widget> screens = [HomeScreen(), SettingScreen(), ProfileScreen()];

  var selectedindex = 0.obs;

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Bottom Navigation'),
        // ),
        body: Obx(() => screens[selectedindex.value]),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex.value,
            onTap: (index) {
              selectedindex.value = index;
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book), label: 'Saved Recipes'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      ),
    );
  }
}
