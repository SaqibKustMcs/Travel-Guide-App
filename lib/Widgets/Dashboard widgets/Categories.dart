import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,),
      width: MediaQuery.of(context).size.width*0.48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0.0, 10)
          )
        ],
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
          Text("Mountains",style: GoogleFonts.poppins(fontSize: 14.sp,),)
        ],
      ),
    );
  }
}
