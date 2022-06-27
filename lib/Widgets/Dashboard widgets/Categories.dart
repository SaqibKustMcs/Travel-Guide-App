import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width*0.48,
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black12,spreadRadius: 1, blurRadius: 8 )],

          borderRadius: BorderRadius.circular(23),
          color: Colors.white
      ),
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.08,
            width: MediaQuery.of(context).size.width*0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/Rectangle 16.png'),
                    fit: BoxFit.fill
                )
            ),
          ),
          SizedBox(width: 5,),
          Text("Mountains",style: GoogleFonts.poppins(fontSize: 14,),)
        ],
      ),
    );
  }
}
