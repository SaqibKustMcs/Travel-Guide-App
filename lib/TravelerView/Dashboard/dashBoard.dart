import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:travel_guide/BottomBar/bottomNavBar.dart';
import 'package:travel_guide/TravelerView/UserProfile/userProfile.dart';
import 'package:travel_guide/Widgets/Dashboard%20widgets/Categories.dart';

import 'package:travel_guide/Widgets/Dashboard%20widgets/availableGuides.dart';
import 'package:travel_guide/Widgets/Dashboard%20widgets/dashBoardContainer.dart';
import 'package:travel_guide/Widgets/Dashboard%20widgets/totalGuides.dart';

import '../MainMenu/mainMenu.dart';


class DashBoard extends StatefulWidget {
   late int value;


   @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff666666)
        ),


        actions: [
          InkWell(
            onTap: (){
             Get.to(MainMenu());
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/Ellipse 1.png",),

              backgroundColor: Colors.pink,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              // SizedBox(height: 5),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Color(0xffFFFFFF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 14.0, right: 10, top: 12, bottom: 12),
                      child: Icon(Icons.search),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11.0),
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Florida, USA',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 14),
                      child: Icon(Icons.mic),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Suggested Guides (2)',
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff183046)),
                  ),
                  ImageIcon(AssetImage("assets/Icons/Vector (17).png"),color: Color(0xffC38D9D),),
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.35,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                        onTap: (){Get.to(UserProfile());},
                        child: DashBoardContainer());
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Available Guides (12)',
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff183046)),
                  ),
                  ImageIcon(AssetImage("assets/Icons/Vector (17).png"),color: Color(0xffC38D9D),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                 height: MediaQuery.of(context).size.height*0.2,
                child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: AvailableGuides(),
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Guides (121)',
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff183046)),
                  ),
                  ImageIcon(AssetImage("assets/Icons/Vector (17).png"),color: Color(0xffC38D9D),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TotalGuides(),
                    );
                  },
                ),
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff183046)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.12,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Categories(),
                    );
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
