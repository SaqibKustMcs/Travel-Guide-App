import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/BottomBar/bottomNavBar.dart';
import 'package:travel_guide/TravelerView/ForgetPassword/forgetPassword.dart';
import 'package:travel_guide/TravelerView/SignUp/signUp.dart';
import 'package:travel_guide/TravelerView/Dashboard/dashBoard.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      // appBar: AppBar(
      //   backgroundColor: Color(0xffE5E5E5),
      //   elevation: 0,
      //   leading: Image.asset("assets/images/Vector.png"),
      // ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: 175,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Login",
                style: GoogleFonts.poppins(
                    color: Color(0xff183046), fontSize: 30)),
          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "E-mail",
          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "Password",
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
              onPressed: () {Get.to(bottomNavigationBar());},
              child: Text(
                "Login",
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: 5,
          ),
          InkWell(
              onTap: (){Get.to(ForgetPassword());},
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget Password',
                  style: GoogleFonts.poppins(color: Color(0xff494A4A)),
                )),
          ),
          SizedBox(
            height: 20,
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
                      style: GoogleFonts.poppins(color: Color(0xff666666)),
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
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/google.png"))),
              ),
              label: Text(
                "       Login with Google",
                style: GoogleFonts.poppins(color: Color(0xff808B9B)),
              )),
          SizedBox(
            height: 140,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Do not have account? ',
                style:
                    GoogleFonts.poppins(fontSize: 16, color: Color(0xff666666)),
              ),
              InkWell(
                  onTap: () {
                    Get.to(SignUp());
                  },
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        fontSize: 18, color: Color(0xff494A4A)),
                  ))
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
