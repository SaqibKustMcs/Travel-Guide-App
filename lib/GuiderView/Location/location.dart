import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/Ellipse 1.png'),
                  ),
                ],


              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(

                      "assets/images/image 15.png"

                    )
                  )
                ),
                child: Column(

                  children: [
                    SizedBox(height: 20,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Center(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("we are finding your guide",style: GoogleFonts.poppins(fontSize: 36,fontWeight: FontWeight.w500),),
                      )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
