import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/AuthView/ForgetPassword/verficationCode.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff666666),
        ),
      ),
      body: ListView(
        padding:EdgeInsets.symmetric(horizontal: 18.0) ,
        children: [
          SizedBox(height: 140,),
          Text("Forget",
              style: GoogleFonts.poppins(
                  color: Color(0xff183046), fontSize: 36,fontWeight: FontWeight.w500)),
          Text("Password",
              style: GoogleFonts.poppins(
                  color: Color(0xff183046), fontSize: 36,fontWeight: FontWeight.w500)),
          SizedBox(height: 25,),
          CustomTextFields(
            hintText: "E-mail",
            hintColor: Color(0xff666666),

          ),
          SizedBox(height: 25,),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffE27D5F),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 14),
              ),
              onPressed: () {Get.to(VerificationCode());},
              child: Text(
                "Send",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                    color: Colors.white, fontWeight: FontWeight.w500),
              )),
          SizedBox(height:230,),
          Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have Account? ',style: GoogleFonts.poppins(fontSize: 17,),),
              Text('login ',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),),

            ],
          )),
          SizedBox(height: 20),
        ],


      ),
    );
  }
}
