import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AllChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color:Colors.black12,spreadRadius: 1,blurRadius: 10)]
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/Ellipse 1.png'),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Keren",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18),),
                        Text("09:06 PM",style: GoogleFonts.poppins(fontSize: 12),),
                      ]
                  ),
                  Text("Lorem ipsum may be used as a placeholder before final copy with with",maxLines: 2,overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(fontSize: 14),),
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
