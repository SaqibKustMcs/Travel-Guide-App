import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
class DashBoardContainer extends StatelessWidget {
  const DashBoardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle 13.png'),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Onur Ozdeir",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff666666)),
                        ),
                      ),
                      Text(
                        "Florida, USA",
                        style: GoogleFonts.poppins(
                            fontSize: 6, color: Color(0xff666666)),
                      ),
                      Row(
                        children: [
                          SmoothStarRating(
                            rating: 5,
                            size: 10,
                            color: Colors.yellow,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            starCount: 5,
                            allowHalfRating: false,
                            spacing: 2.0,
                            // onRatingChanged: (value) {
                            //   setState(() {
                            //     rating = value;
                            //   });
                            // },
                          ),
                          Text('(120)',style: GoogleFonts.poppins(fontSize: 10,color: Color(0xff666666)),),
                        ],
                      ),

                      Text("Enjoy a Thrilling Shared Airboat Ride, and Explore the Exhibits",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                            color: Color(0xff666666),
                            fontSize: 8
                          ),
                          textAlign: TextAlign.justify),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$124/h',
                      style:
                      GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Color(0xffFF9494),
                      size: 13,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
