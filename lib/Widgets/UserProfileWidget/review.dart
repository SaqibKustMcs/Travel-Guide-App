import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 0,vertical: 5
      ),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/splash.png'),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Keren",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20),),
                        SizedBox(width: 10,),
                        SmoothStarRating(
                          rating: 4,
                          size: 17,
                          color: Colors.yellow ,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,borderColor: Colors.grey,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: false,
                          spacing: 2.0,
                          // onRatingChanged: (value) {
                          //   setState(() {
                          //     rating = value;
                          //   });
                          // },
                        ),                          ]
                  ),
                  Text("Lorem ipsum may be used as a placeholder before final copy with with",maxLines: 2,overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(fontSize: 13),),
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
