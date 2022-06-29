
import 'package:flutter/material.dart';
import 'package:travel_guide/GuiderView/ChooseCity/ChooseCity.dart';
import 'package:travel_guide/GuiderView/CreateService/createService.dart';
import 'package:travel_guide/GuiderView/GuiderUserProfile/GuiderUserProfile.dart';
import 'package:travel_guide/TravelerView/AllRequest/AllRequest.dart';
import 'package:travel_guide/TravelerView/CompletedOrder/completeOrder.dart';
import 'package:travel_guide/TravelerView/Location/location.dart';
import 'package:travel_guide/TravelerView/Notification/notificationPage.dart';
import 'package:travel_guide/TravelerView/Payments/payments.dart';
import 'package:travel_guide/TravelerView/Review/reviewScreen.dart';
import 'package:travel_guide/TravelerView/SplashScreen/splashScreen.dart';
import 'package:get/get.dart';
import 'package:travel_guide/TravelerView/UserProfile/userProfile.dart';
import 'package:travel_guide/Widgets/UserProfileWidget/review.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Travel Guide',
        home:ChooseCity(),
      debugShowCheckedModeBanner: false,
    );
  }
}