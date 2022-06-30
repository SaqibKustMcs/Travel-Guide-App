
import 'package:flutter/material.dart';
import 'package:travel_guide/GuiderBottomBar/guiderBottomNavBar.dart';
import 'package:travel_guide/GuiderView/GuiderDashBoard/GuiderDashBoard.dart';
import 'package:travel_guide/GuiderView/TravellersRequest/travellersRequest.dart';
import 'package:travel_guide/GuiderView/UpdateInformation/updateInformation.dart';

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
        home:SplashScreen(),
        // home: TravellersRequest(),
      debugShowCheckedModeBanner: false,
    );
  }
}