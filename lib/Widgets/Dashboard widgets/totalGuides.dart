import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TotalGuides extends StatelessWidget {
  const TotalGuides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height*0.2,
        width: MediaQuery.of(context).size.width*0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),

        ),

        child: Column(
          children: [
            Container(

              height: MediaQuery.of(context).size.height*0.12,
              width: MediaQuery.of(context).size.width*0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle 13 .png'),
                      fit: BoxFit.fill
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.09,

                      height: MediaQuery.of(context).size.height*0.022,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffE27D5F)
                      ),
                      child: Center(child: Text("120+",style: GoogleFonts.poppins(color: Colors.white,fontSize: 8),)),
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Harry Risto',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff666666)),),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.orange,size: 13,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(

                  alignment: Alignment.centerLeft,
                  child: Text('Florida, USA',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 10),)),
            ),


          ],
        ),

      ),
    );
  }
}
