import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_43a87006190318/Screen/profiledetail_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ProfileScreen',
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(Profiledetailscreen());
              },
              child: Text('Profile Detail'))
        ],
      ),
    );
  }
}
