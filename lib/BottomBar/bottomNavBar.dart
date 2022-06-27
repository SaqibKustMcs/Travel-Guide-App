
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/TravelerView/Dashboard/dashBoard.dart';
import 'package:travel_guide/TravelerView/MainMenu/mainMenu.dart';
import 'package:travel_guide/TravelerView/Notification/conversationView.dart';
import 'package:travel_guide/TravelerView/Notification/notificationPage.dart';
import 'package:travel_guide/TravelerView/UserProfile/editProfile.dart';
import 'package:travel_guide/TravelerView/UserProfile/userProfile.dart';
import 'package:travel_guide/TravelerView/saved.dart';
class bottomNavigationBar extends StatefulWidget {
   bottomNavigationBar({Key,key,this.editProfile}) : super(key: key);
  var editProfile;
  @override
  bottomNavigationBarState createState() => bottomNavigationBarState();
}

class bottomNavigationBarState extends State<bottomNavigationBar> {

  @override
  void initState() {
    super.initState();
  }
  var smallHeading = 15.0;
  var largeHeading = 20.0;
  static var selectedIndex=0;
  static  List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    AllChats(),
    DashBoard(),
    NotificationPage(),
    Saved()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: GoogleFonts.poppins(fontSize: 7),
        unselectedLabelStyle: GoogleFonts.poppins(fontSize: 7),
        unselectedItemColor: Color(0xff183046),
        selectedItemColor:Color(0xffE27D5F),
        onTap: _onTap,
        currentIndex: selectedIndex,

        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/Icons/Vector (12).png")),label: "Home"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/Icons/Vector (7).png")),label: "Messages"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Icons/Vector (6).png')),label: "Media"),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/Icons/Vector (5).png")),label:"Notifications"),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/Icons/Rectangle 19.png")),label:"Profile"),

        ],

      ),
      body: widget.editProfile==true?EditProfile():_widgetOptions.elementAt(selectedIndex),
    );
  }
  void _onTap(int index)
  {
    selectedIndex = index;
    setState(() {
    });
  }
}

