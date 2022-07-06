import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';
import 'package:travel_guide/Widgets/DropDown/perHourDropDown.dart';
import 'package:travel_guide/Widgets/GenerateOffer/GenerateOffer.dart';
import 'package:travel_guide/Widgets/chatsAppBar/chatsAppBar.dart';
import 'package:travel_guide/Widgets/dynanamic_chatting_headder.dart';
import 'package:travel_guide/Widgets/sendMessageWidget.dart';
class GuiderChats extends StatelessWidget {
  const GuiderChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatingHeader(),
            InkWell(
                onTap: (){Get.defaultDialog(




                    title: "Choose the best fixtures for you",
                    titlePadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    content:
                    Column(
                      children: [
                        CustomTextFields(hintText: "Budget",leadinIcon: Expanded(child: Container(
                          width: 100,
                            child: PerHourdropDown( selectedItem: "Per Hour"))),),
                        CustomTextFields(hintText: "Starts At",leadinIcon:Icon(Icons.calendar_today_rounded)),
                        CustomTextFields(hintText: "End At",),
                        SizedBox(height: 20,),
                        TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xff85CDCA),
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                            ),
                            onPressed: (){}, child: Text("Generate Quote",style: GoogleFonts.poppins(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),))
                      ],
                    ),


                    backgroundColor: Color(0xffFFFFFF),
                    titleStyle: GoogleFonts.poppins(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500,),
                    radius: 30
                );},
                child: GenerateOffer()),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: Column(
                  children: [
                    recievedMessageWidget(),

                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,

            ),


          ],
        ),
      ),
    );
  }
}

class GuiderTopAppBar {
}
