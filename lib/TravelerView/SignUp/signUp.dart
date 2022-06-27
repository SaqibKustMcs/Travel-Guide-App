import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/TravelerView/LoginView/loginScreen.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
          Row(
            children: [
              Text('Traveller',
                  style: GoogleFonts.poppins(
                    color: Color(
                      0xff666666,
                    ),
                    fontSize: 18,
                  )),
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.expand_more_outlined,
              size: 25,
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Register",
                style: GoogleFonts.poppins(
                    color: Color(0xff183046), fontSize: 30)),
          ),
          CustomTextFields(
            hintText: "Name",
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
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "Confirm Password",
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
                "       Sign Up with Google",
                style: GoogleFonts.poppins(color: Color(0xff808B9B)),
              )),
          SizedBox(
            height: 55,
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
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontSize: 18, color: Color(0xff494A4A)),
                  ))
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    ));
  }
}
