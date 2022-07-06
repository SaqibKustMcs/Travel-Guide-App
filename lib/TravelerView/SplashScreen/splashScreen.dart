import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:travel_guide/AuthView/LoginView/loginScreen.dart';
import 'package:travel_guide/Constants/constants.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
     sw =MediaQuery.of(context).size.width;
     sh =MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: sh,
              width: sw,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/splash.png"),
                      fit: BoxFit.fill
                  )

              ),
            ),
            Positioned(
                left: 0,right: 0,top: 0,bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      end: Alignment.topCenter,
                      begin: Alignment.bottomCenter,
                      colors: [ Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.5),]
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        SizedBox(height: 102,),
                        Text("Unforgotton",style: GoogleFonts.poppins(fontSize: 48.sp,fontWeight: FontWeight.w500
                            ,color: Colors.white),),
                        Text("Experience",style: GoogleFonts.poppins(fontSize: 48.sp,fontWeight: FontWeight.w500
                            ,color: Colors.white),),
                        SizedBox(height: 15,),
                        Text("Book your tour with us we have many ",
                          style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w400
                              ,color: Colors.white),),
                        Text("packages to explore the world",
                          style: GoogleFonts.poppins(fontSize: 13.sp
                              ,color: Colors.white),),



                      ],
                    ),
                  ),

            )),
            Align(
                alignment: Alignment.bottomCenter,

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: TextButton(

                    style: TextButton.styleFrom(
                      backgroundColor:Color(0xffE27D5F),
                      padding: EdgeInsets.symmetric(horizontal: 70,vertical: 10),
                    ),


                      onPressed: (){
                     Get.to(LoginScreen());
                      }, child: Text("Continue",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20.sp),)),
                ))
          ]
        )
      ),
    );
  }
}
