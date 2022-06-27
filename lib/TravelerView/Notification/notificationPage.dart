import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/NotificationWidgets/notificationPageWidgets.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),

      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
            backgroundColor: Colors.pink,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
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
      ),
    );
  }
}
