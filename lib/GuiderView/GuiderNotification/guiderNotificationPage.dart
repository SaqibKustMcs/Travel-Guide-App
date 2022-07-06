import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/NotificationWidgets/notificationPageWidgets.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';
class GuiderNotificationPage extends StatelessWidget {
  const GuiderNotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),


      body: SafeArea(
        child:NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification? overscroll) {
            overscroll!.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopAppBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Notifications',style: GoogleFonts.poppins(fontSize: 21,fontWeight: FontWeight.w500),),
                            Icon(Icons.notifications_on_outlined)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(thickness: 1.0),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return NotificationPageWidget();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
