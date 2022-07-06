import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/AuthView/LoginView/loginScreen.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';
import 'package:travel_guide/Widgets/DropDown/dropDown.dart';

class SignUp extends StatelessWidget {
  var selectedValue= "Traveller";

   SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff666666),
        ),
        actions: [
          Container(
            child: dropDownSignup(selectedItem: selectedValue,),
            width: 100,
            height: 46,
          ),
        ],
      ),
      body:ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Register",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500,
                    color: Color(0xff183046), fontSize: 36.sp)),
          ),
          CustomTextFields(
            hintText: "Name",
            hintColor: Color(0xff666666),


          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "E-mail",
            hintColor: Color(0xff666666),

          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "Password",

            hintColor: Color(0xff666666),

            leadinIcon: Image.asset("assets/images/sufix.png"),
          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "Confirm Password",
            hintColor: Color(0xff666666),

            leadinIcon: Image.asset("assets/images/sufix.png"),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffE27D5F),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 14),
              ),
              onPressed: () {},
              child: Text(
                "Sign Up",
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                    color: Colors.white, fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(child: Divider(height: 5)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "OR",
                      style: GoogleFonts.poppins(color: Color(0xff666666),fontSize: 20.sp,fontWeight:FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Divider(
                height: 5,
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextButton.icon(
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xffF1F6F7),
                  padding: EdgeInsets.symmetric(vertical: 14)),
              onPressed: () {},
              icon: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/google.png"))),
              ),
              label: Text(
                "       Sign Up with Google",
                style: GoogleFonts.poppins(color: Color(0xff808B9B),fontSize: 20.sp,fontWeight:FontWeight.w500),
              )),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Do not have account? ',
                style:
                    GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w500, color: Color(0xff666666)),
              ),
              InkWell(
                  onTap: () {
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, color: Color(0xff494A4A),fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    ));
  }
}
