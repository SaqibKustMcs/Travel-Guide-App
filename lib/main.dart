import 'package:flutter/material.dart';
import 'package:travel_guide/TravelerView/Notification/notificationPage.dart';
import 'package:travel_guide/TravelerView/SplashScreen/splashScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Travel Guide',
        home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
